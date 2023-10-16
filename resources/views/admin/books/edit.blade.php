@extends('layout.admin')
@section('title',"edit books")


@section('content')

<div class="container ">
    <div class="row justify-content-center mt-5   ">
        <div class="col-md-8">
            <div class="card mx-5">
                <form method ="post" action="/booksadmin/{{$book['id']}}">
                    @csrf

                    @method('put')

                    <div class="row mb-3 p-3">
                            <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control w-75 " name="name" value="{{$book['name']}}" >

                            </div>
                        </div>


                        <div class="row mb-3 p-3">
                            <label for="details" class="col-md-4 col-form-label text-md-end">{{ __('Details ') }}</label>

                            <div class="col-md-6 ">
                            <input type="text" class="form-control w-75 " name="details" value="{{$book['details']}}" >


                            </div>
                        </div>

                        <div class="row mb-3 pl-3 ">
                            <label for="category" class="col-md-4 col-form-label text-md-end">{{ __('Category ') }}</label>

                            <div class="col-md-6 ">
                            <input type="number" class="form-control  w-75 " name="category" value="{{$book['category_id']}}" >


                            </div>
                        </div>

                        <div class="row mb-3 pl-3 ">
                            <label for="status" class="col-md-4 col-form-label text-md-end">{{ __('Status ') }}</label>

                            <div class="col-md-6 ">
                            <input type="text" class="form-control  w-75 " name="status" value="{{$book['status']}}" >


                            </div>
                        </div>



                        <div class="row mb-0 p-3">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-outline-primary mb-2">
                                    {{ __('Update') }}
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
