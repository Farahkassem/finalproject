<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\facades\Auth;
use App\Models\Book_issue;
use App\Models\Book;
use App\Models\User;
use Carbon\Carbon;


class BookIssueController extends Controller
{
    public function index($id){
        //list all user issue books
        $data=Book_issue::all();
        $books=$data->where('user_id',$id);

        return view("bookissue\bookissue",  compact('books'));
    }
    public function store(Request $request , string $id)
    {
        $book=Book::find($id);
        $issue_date = date('Y-m-d');
        $return_date = Carbon::now();
        $return_date->addDays(7);


        $data = Book_issue::create([
            'book_id'=>$book->id,
            'user_id'=>Auth::id(),
            'issue_date'=>$issue_date,
            'issue_status' => 'A',
            'return_date'=>$return_date
            ]);
        $data->save();
        $book->status='NA';
        $book->save();
        return redirect("bookissue/" . Auth::id());
    }

    public function destroy( string $id, string $bookid )
    {
        Book_issue::destroy($id);
        $book=Book::find($bookid);
        $book->status='Available';
        $book->save();
        return redirect("bookissue/" . Auth::id());


    }



}
