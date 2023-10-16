<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Http\Controllers\BookIssueController;
use App\Http\Controllers\AdminBookController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AdminProfileController;
use App\Http\Controllers\ProfileController;
use App\Models\Book_issue;
use App\Models\User;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
//admin
Route::prefix('')->middleware(['auth','isAdmin'])->group(function(){

    Route::resource("/booksadmin",AdminBookController::class)->middleware('auth');
    Route::resource("/users",UserController::class);
    Route::get('/borrowed', function () {
        $books=Book_issue::all();
        return view("admin.books.borrow",compact('books'));
    });
    Route::get('/adminpro/{id}', [AdminProfileController::class,'show'] );
    Route::post('/edit/{id}', [AdminProfileController::class,'edit'] );
    Route::put('/adminpro/{id}', [AdminProfileController::class,'update'] );
    Route::post('/users/search', [UserController::class, 'search'])->name('users.search');

    Auth::routes();

    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

});


//student

Route::get('/books', [BookController::class,'index'] )->middleware('auth');
Route::get('/books/{id}', [BookController::class,'show'] )->middleware('auth');
Route::put('/bookissue/{id}', [BookIssueController::class,'store'] )->middleware('auth');
Route::get('/bookissue/{id}', [BookIssueController::class,'index'] )->middleware('auth');
Route::delete('/bookissue/{id}/{bookid}', [BookIssueController::class,'destroy'] )->middleware('auth');
Route::get('/profile/{id}', [ProfileController::class,'show'] )->middleware('auth');
Route::post('/edit/{id}', [ProfileController::class,'edit'] )->middleware('auth');
Route::put('/profile/{id}', [ProfileController::class,'update'] )->middleware('auth');
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');
