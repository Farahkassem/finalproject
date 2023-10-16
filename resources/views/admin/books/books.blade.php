
@extends('layout.admin')
@section("title","All Books")
@section('content')
<div class="container ">

        <div class="col-md-9">
            <div class="card border-0">
                    <form method="post" action="/books">
                        @csrf

                        <table class="table table-borderless table-hover ">

                        <tr>
                            <th>Book Name</th>
                            <th>Category</th>
                            <th>Status</th>
                            <th colspan=4 class="text-center">Action</th>
                            <th ></th>
                        </tr>
                        @foreach($books as $book)
                        <tr>
                            <td><input name="name" class="form-control-plaintext" placeholder="{{$book->name}}" readonly></input></td>

                                <td><input name="details" class="form-control-plaintext" placeholder="{{$book->category->name}}" readonly></input></td>
                                <td><input name="status" class="form-control-plaintext" placeholder="{{$book->status}}" readonly></input></td>

                                <td><a  class="btn btn-outline-primary mb-3" href="booksadmin/{{$book['id']}}">View</a></td>
                                <td><a class="btn btn-outline-primary mb-3" href="booksadmin/{{$book['id']}}/edit">Edit</a></td>
                                <td>
                                <form action="booksadmin/{{$book['id']}}" method="post">
                                    @method('delete')
                                    @csrf
                                    <input type="submit" value="Delete" class="btn btn-outline-danger">
                                </form>


                        </tr>

                        @endforeach


                        </table>
                    </form>
            </div>
        </div>

</div>
@endsection
