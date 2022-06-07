<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Production;

class ProductionController extends Controller
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

    public function list($limit= 0){
        if((int)$limit > 0 ){
            $production = Production::limit($limit)->get(); 
        }else{
            $production = Production::join('category', 'production.category_id', '=', 'category.id')->get(['production.id', 'production.title', 'production.description', 'production.genre', 'production.duration', 'category.name as category_name']); 
        }
        return response()->json(['Production' => $production ]);
    }

    public function productionById($id){

        if(strlen(trim($id))== 0){
            return response(['error' => 'Informe o ID da produção'], 400);
        }

        $production = Production::find($id);

        if(empty($production)){
            return response(['error' => 'Produção não encontrada'], 400);
        }

        return response()->json(['Production' => $production ]);

    }

    public function productionByCategory($id){
        $production = Production::where('category_id', '=', $id)->get();
        return response()->json(['Production' => $production ]);
    }
    public function productionByName($name){
        $name = str_replace("%20", " ", $name);        

        $production = Production::where('title', 'like', '%'.$name.'%')->get();

        return response()->json(['Production' => $production ]);
    }

    public function create(Request $request){

        try {

            if(strlen(trim($request->title))== 0){
                 return response(['error' => 'Informe o título da produção'], 400);
            }
            if(strlen(trim($request->duration))== 0){
                 return response(['error' => 'Informe o tempo da produção'], 400);
            }
            if(strlen(trim($request->description))== 0){
                 return response(['error' => 'Informe a descrição da produção'], 400);
            }
            if(strlen(trim($request->genre))== 0){
                 return response(['error' => 'Informe o género da produção'], 400);
            }
            if(strlen(trim($request->photo_link))== 0){
                 return response(['error' => 'Informe o link da foto da produção'], 400);
            }
            if(strlen(trim($request->category_id))== 0){
                 return response(['error' => 'Informe a categoria da produção'], 400);
            }

            $production = new Production();
            $production->title = $request->title;
            $production->duration = $request->duration;
            $production->description = $request->description;
            $production->genre = $request->genre;
            $production->photo_link = $request->photo_link;
            $production->category_id = $request->category_id;
            $production->save();

             return response()->json(["message" => "Produção cadastrada com sucesso"], 201);
        } catch (\Exception $e) {
             return response()->json(["message" => $e->getmessage()], 401);
        }

    }

    public function update(Request $request, $id){

        if(strlen(trim($id))== 0){
            return response(['error' => 'Informe o ID da produção'], 400);
        }
        if(strlen(trim($request->title))== 0){
                return response(['error' => 'Informe o título da produção'], 400);
        }
        if(strlen(trim($request->duration))== 0){
                return response(['error' => 'Informe o tempo da produção'], 400);
        }
        if(strlen(trim($request->description))== 0){
                return response(['error' => 'Informe a descrição da produção'], 400);
        }
        if(strlen(trim($request->genre))== 0){
                return response(['error' => 'Informe o género da produção'], 400);
        }
        if(strlen(trim($request->photo_link))== 0){
                return response(['error' => 'Informe o link da foto da produção'], 400);
        }
        if(strlen(trim($request->category_id))== 0){
                return response(['error' => 'Informe a categoria da produção'], 400);
        }

        $production = Production::find($id);

        if(empty($production)){
            return response(['error' => 'Produção não encontrada'], 400);
        }
        
        try {
            $production->title = $request->title;
            $production->duration = $request->duration;
            $production->description = $request->description;
            $production->genre = $request->genre;
            $production->photo_link = $request->photo_link;
            $production->category_id = $request->category_id;
            $production->save();

             return response()->json(["message" => "Produção atualizada com sucesso"], 201);
        } catch (\Exception $e) {
             return response()->json(["message" => $e->getmessage()], 401);
        }
    }

    public function delete($id){

        if(strlen(trim($id))== 0){
            return response(['error' => 'Informe o ID da produção'], 400);
        }
        
        $production = Production::find($id);

        if(empty($production)){
            return response(['error' => 'Produção não encontrada'], 400);
        }

        if($production->delete()){
            return response(['error' => 'Produção excluída com sucesso.' ], 400);
        }

    }

    
}
