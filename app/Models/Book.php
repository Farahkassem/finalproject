<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Category;
use App\Models\Book_issue;

class Book extends Model
{
    use HasFactory;
    protected $fillable = [ "id","status","name","details","category_id"];
    function category()
    {
        return $this->belongsTo(category::class);
    }
    function book_issue()
    {
        return $this->belongsTo(book_issue::class);
    }

}
