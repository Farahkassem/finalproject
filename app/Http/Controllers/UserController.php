<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    //
    function index(){


        $std = User::all();
        $users= $std->where('role',"0");

        return view("admin.users.users",compact('users'));

    }

    function show($id){

        $user = User::find($id);

        return view ('admin.users.show',compact('user'));
    }

    public function search(Request $request)
    {
        try {
            $user = User::findOrFail($request->input('user_id'));
        } catch (ModelNotFoundException $exception) {
            return back()->withError($exception->getMessage())->withInput();
        }
        return view('admin.users.search', compact('user'));
    }



}
