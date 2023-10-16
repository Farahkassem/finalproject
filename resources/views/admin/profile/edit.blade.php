@extends('layout.admin')
@section("title","Edit Profile")
@section('content')

<div class="container ">
    <div class="row justify-content-center mt-5  w-75">
        <div class="col-md-8">
            <div class="card">
            <div class="card-header text-md-center text-light bg-dark">{{ __('Edit Profile') }}</div>
                <div class="card-body ">
                    <form method="post" action="/adminpro/{{ Auth::user()->id }}" class=" d-flex align-content-center flex-column ">
                        @csrf
                        @method('put')

                        <div class="row mb-3 p-3">
                            <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control w-75 " name="name" value="{{ Auth::user()->name }}" >

                            </div>
                        </div>


                        <div class="row mb-3 p-3">
                            <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email ') }}</label>

                            <div class="col-md-6 ">
                            <input type="email" class="form-control w-75 " name="email" value="{{ Auth::user()->email }}" >


                            </div>
                        </div>

                        <div class="row mb-3 pl-3 ">
                            <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password ') }}</label>

                            <div class="col-md-6 ">
                            <input type="password" class="form-control  w-75 " name="password" value="{{ Auth::user()->email }}" >


                            </div>
                        </div>



                        <div class="row mb-0 p-3">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-dark mb-2">
                                    {{ __('Save') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
