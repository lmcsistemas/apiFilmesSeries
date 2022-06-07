<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function list(){

        //echo "passou aqui";
        $categories = Category::all(); 
        return response()->json(['categories' => $categories ]);
    }

    public function create(Request $request){

        try {

            if(strlen(trim($request->name))== 0){
                 return response(['error' => 'Informe o nome da categoria'], 400);
            }

            $category = new Category();
            $category->name = $name;            
            $category->save();

             return response()->json(["message" => "Categoria cadastrada com sucesso"], 201);
        } catch (\Exception $e) {
             return response()->json(["message" => $e->getmessage()], 401);
        }

    }

    public function update(Request $request, $id){

        if(strlen(trim($id))== 0){
            return response(['error' => 'Informe o ID da categoria'], 400);
        }

        $category = Category::find($id);

        if(empty($category)){
            return response(['error' => 'Categoria não encontrada'], 400);
        }
        
        try {
            $category->name = $request->name;            
            $category->save();

             return response()->json(["message" => "Categoria atualizada com sucesso"], 201);
        } catch (\Exception $e) {
             return response()->json(["message" => $e->getmessage()], 401);
        }
    }

    public function delete($id){

        if(strlen(trim($id))== 0){
            return response(['error' => 'Informe o ID da categoria'], 400);
        }
        
        $category = Category::find($id);

        if(empty($category)){
            return response(['error' => 'Categoria não encontrada'], 400);
        }

        if($category->delete()){
            return response(['error' => 'Categoria excluída com sucesso.' ], 400);
        }

    }

    
}
