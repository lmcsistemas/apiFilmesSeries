<?php

namespace App\Http\Controllers;

use App\Models\User;
use Laravel\Lumen\Routing\Controller as BaseController;
use Illuminate\Http\Request;

class UserController extends BaseController
{
    public function register(Request $request)
    {
       
        try {
            $user = new User();
            $user->password = $request->password;
            $user->email = $request->email;
            $user->name = $request->name;
            $user->save();
            //return $this->successResponse($user);
             return response()->json(["message" => "Usuario cadastrado com sucesso"], 201);
        } catch (\Exception $e) {
             return response()->json(["message" => $e->getmessage()], 401);
        }
        
    }

    /**
     * Get user actual
     *
     * @return void
     */
    public function me()
    {
        return response()->json(
            auth()->user()
        );
    }

    /**
     * Get list of users
     *
     * @return void
     */
    public function getUsers()
    {
        return response()->json([
            'list' => User::all()
        ]);
    }
}