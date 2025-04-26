<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostControllerApi;
use App\Http\Controllers\UserControllerApi;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


 Route::get('/cursei/posts', [PostControllerApi::class, 'indexApi'])->name('posts.index');
 Route::post('/cursei/posts/{idUser}', [PostControllerApi::class, 'storeApi'])->name('posts.store');
 Route::get('/cursei/posts/user/{idUser}', [PostControllerApi::class, 'getPostsByUser'])->name('posts.byUser');
 
Route::get('/cursei/user', [UserControllerApi::class, 'indexApi'])->name('user.index');
Route::post('/cursei/user', [UserControllerApi::class, 'storeApi'])->name('user.store');
Route::delete('/cursei/user/{id}', [UserControllerApi::class, 'destroyApi'])->name('user.destroy');
Route::put('/cursei/user/{id}', [UserControllerApi::class, 'updateApi'])->name('user.update');
Route::get('/cursei/user/{id}', [UserControllerApi::class, 'showApi'])->name('user.show');

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
