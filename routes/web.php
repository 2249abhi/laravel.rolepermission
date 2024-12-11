<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ModuleController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\RolepermissionController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\Frontend\FrontendController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


// Route::get('/frontend', [FrontendController::class, 'index'])->name('frontend.index');

Route::get('/', function () {
    return view('frontend.index');
    // return view('welcome');
});

Route::get('/home', [HomeController::class, 'index'])->name('home');

Auth::routes();
Route::group(['middleware' => ['auth']], function() {

    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('products', ProductController::class);
    Route::resource('modules', ModuleController::class);
    Route::resource('categories', CategoryController::class);
    Route::resource('rolepermissions', RolepermissionController::class); 
    Route::resource('posts', PostController::class);//for crud
    //Route::get('/{categorySlug}/{postSlug}', [PostController::class, 'display'])->name('post.display');//for front end

   

});
