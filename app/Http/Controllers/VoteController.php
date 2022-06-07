<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Vote;

class VoteController extends Controller
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
        $votes = Vote::all(); 
        return response()->json(['Votes' => $votes ]);
    }

    public function totalVotes(){
        $vote = Vote::join('production', 'vote.production', '=', 'production.id')
                    ->groupBy('production', 'production.title')->select(Vote::raw('count(*) as qtde_votes'),'production', 'production.title',)->get();
        return response()->json(['Votes' => $vote ]);
    }


    public function create(Request $request){

        try {
            if(strlen(trim($request->production))== 0){
                return response(['error' => 'Informe a produção que deseja votar'], 400);
            }
            $vote = new Vote();
            $vote->production = $request->production;            
            $vote->save();

             return response()->json(["message" => "Seu voto foi contabilizado com sucesso"], 201);
        } catch (\Exception $e) {
             return response()->json(["message" => $e->getmessage()], 401);
        }
    }


   
}
