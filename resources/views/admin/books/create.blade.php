
@extends('layout.admin')
@section('title',"Add new book")


@section('content')

<div class="container ">
    <div class="row justify-content-center mt-5   ">
        <div class="col-md-8">
            <div class="card mx-5">
                <form method ="post" action="/booksadmin" class=" mx-5">
                    @csrf

                    <div class="row mb-3 p-3">
                            <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control w-75 text-muted " name="name" placeholder="Name" >

                            </div>
                        </div>


                        <div class="row mb-3 p-3">
                            <label for="details" class="col-md-4 col-form-label text-md-end">{{ __('Details ') }}</label>

                            <div class="col-md-6 ">
                            <input type="text" class="form-control w-75 text-muted" name="details" placeholder="Details" >


                            </div>
                        </div>

                        <div class="row mb-3 pl-3 ">
                            <label for="category" class="col-md-4 col-form-label text-md-end">{{ __('Category ') }}</label>

                            <div class="col-md-6 ">
                            <input type="number" class="form-control  w-75 text-muted" name="category" placeholder="Category" >


                            </div>
                        </div>

                        <div class="row mb-3 pl-3 ">
                            <label for="status" class="col-md-4 col-form-label text-md-end">{{ __('Status ') }}</label>

                            <div class="col-md-6 ">
                            <input type="text" class="form-control  w-75 text-muted" name="status" placeholder="Status" >


                            </div>
                        </div>



                        <div class="row mb-0 p-3">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-outline-primary mb-2">
                                    {{ __('Add') }}
                                </button>
                            </div>
                        </div>


                </form>


                @foreach ($errors->all() as $error)
                        <li>{{$error}}</li>
                        @endforeach
            </div>
        </div>
    </div>
</div>

@endsection
