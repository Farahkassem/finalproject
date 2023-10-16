@extends('layout.admin')
@section("title","Borrowed Books")
@section('content')
<div class="container ">
    <div class="row justify-content-start  ">
        <div class="col-md-8">
            <div class="card border-0">



                    <table class="table table-borderless table-hover mx-4">

                    <tr>
                        <th>Name</th>
                        <th>Issue Date</th>
                        <th>Return Date</th>
                        <th>Student Name</th>
                        <th></th>
                    </tr>

                        @foreach($books as $book)
                        <tr>

                            <td> {{$book->book->name}} </td>
                            <td> {{$book->issue_date}} </td>
                            <td> {{$book->return_date}} </td>
                            <td> {{$book->user->name}} </td>

                        </tr>




                        @endforeach

                    </table>

            </div>
        </div>
    </div>
</div>
@endsection
