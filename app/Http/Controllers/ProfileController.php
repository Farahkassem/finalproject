<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class ProfileController extends Controller
{
    function show($id){
        $user=User::find($id);

        return view('user.profile', compact('user'));
    }




    function edit( $id){
        $user=User::find($id);

        return view('user.edit', compact('user'));
    }
    function update(Request $request, string $id){
        $user=User::find($id);
        $user->name=$request->name;
        $user->email=$request->email;
        $user->password=$request->password;
        $user->save();
        return redirect("profile/$user->id");


    }
}
