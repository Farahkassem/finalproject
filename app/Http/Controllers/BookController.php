<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Book_issue;
class BookController extends Controller
{
    function index(){
        //list all books
        $books=Book::all();
        return view("book.books",  compact('books'));
    }

    function show($id){
        $book=Book::find($id);

        return view('book.show', compact('book'));
    }




}
