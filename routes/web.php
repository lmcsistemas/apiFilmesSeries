<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    //return $router->app->version();
    return view('inicial', ['name' => 'James']);
});



Route::group(['prefix' => 'api'], function ($router) {
    Route::post('login', 'Auth\AuthController@login');
    Route::post('logout', 'Auth\AuthController@logout');
    Route::post('register', 'UserController@register');


    Route::get('productions/limit/{limit}', 'ProductionController@list');
    Route::get('votes', 'VoteController@list');
    Route::get('votes/ranking', 'VoteController@totalVotes');
    Route::post('vote', 'VoteController@create');

    Route::get('productions/name/{name}', 'ProductionController@productionByName');
    Route::get('productions/category/{id}', 'ProductionController@productionByCategory');
    Route::get('productions', 'ProductionController@list');
    Route::get('production/{id}', 'ProductionController@productionById');

    


    // ROUTES WITH AUTH
    Route::group(['middleware' => 'auth:api'], function () {

        Route::post('production', 'ProductionController@create');
        Route::put('production/{id}', 'ProductionController@Update');
        Route::delete('production/{id}', 'ProductionController@delete');

        Route::get('categories', 'CategoryController@list');
        Route::post('category', 'CategoryController@create');
        Route::put('category/{id}', 'CategoryController@update');
        Route::delete('category/{id}', 'CategoryController@delete');

    });
});