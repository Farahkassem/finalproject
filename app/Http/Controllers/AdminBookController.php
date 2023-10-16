<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Book_issue;
use App\Models\Category;
use Illuminate\Http\Request;

class AdminBookController extends Controller
{
    function index(){


        $books = Book::all();

        return view("admin.books.books",compact('books'));

    }

    function show($id){

        $book = Book::find($id);

        return view ('admin.books.show',compact('book'));
    }

    function create(){

        return view ('admin.books.create');
    }

    /**
     * Summary of store
     * @param \Illuminate\Http\Request $request
     * @return void
     */

    function store(Request $request){

        $request->validate([
            'name' => 'required|max:255'


        ]);

        $book = new Book;
        $book->name = $request->name;
        $book->details = $request->details;
        $book->category_id = $request->category;
        $book->status = $request->status;
        $book->save();

        return redirect("/booksadmin");

    }

    /**
     * Summary of edit
     * @param mixed $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    function edit($id){

        $book = Book::find($id);

        return view ('admin.books.edit',compact('book'));
    }

    function update($id , Request $request){

        $request->validate([
            'name' => 'required|max:255'

        ]);

        $book = new Book;
        $book = Book::find($id);
        $book->name= $request->name;
        $book->details= $request->details;
        $book->category_id= $request->category;
        $book->status= $request->status;
        $book->save();

        return redirect("/booksadmin");
    }

    function destroy($id){

        Book::destroy($id);
        return redirect("/booksadmin");
    }

}
