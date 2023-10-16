<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Book_issue;
use App\Models\User;
class Book_issue extends Model
{
    use HasFactory;
    protected $fillable = ["book_id" , "issue_status","return_date","issue_date","user_id"];
    function book()
    {
        return $this->belongsTo(Book::class);
    }
    function user(){
        return $this->belongsTo(User::class);
    }
}
