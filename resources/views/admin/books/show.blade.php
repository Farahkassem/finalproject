@extends('layout.admin')
@section("title","Show Book")
@section('content')

<div class="container ">
    <div class="row justify-content-start   w-100">
        <div class="col-md-8">
            <div class="card border-0">

                        <table class="table">

                        <tr>
                            <th>Book ID</th>
                            <th>Book Name</th>
                            <th>Details</th>
                            <th>Category</th>
                            <th>Status</th>
                        </tr>

                        <tr>
                            <td><input name="id" class="form-control-plaintext" placeholder="{{$book->id}}" readonly></input></td>
                            <td><input name="name" class="form-control-plaintext" placeholder="{{$book->name}}" readonly></input></td>
                            <td><textarea name="details" class="form-control-plaintext" placeholder="{{$book->details}}" readonly></textarea></td>
                            <td><input name="details" class="form-control-plaintext" placeholder="{{$book->category->name}}" readonly></input></td>
                            <td><input name="status" class="form-control-plaintext" placeholder="{{$book->status}}" readonly></input></td>

                        </tr>




                        </table>
                    </form>
            </div>
        </div>
    </div>
</div>
@endsection
