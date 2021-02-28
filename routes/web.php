<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\QuizController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AdminController2;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/top',[QuizController::class,'top']);
Route::get('/main',[QuizController::class,'main']);
Route::get('/result',[QuizController::class,'result']);

Route::get('/admin/edit',[AdminController::class,'edit']);

Route::get('/admin/edit2',[AdminController2::class,'edit2']);