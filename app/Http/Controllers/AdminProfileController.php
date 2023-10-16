<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class AdminProfileController extends Controller
{
    function show($id){
        $user=User::find($id);

        return view('admin.profile.adminprofile', compact('user'));
    }

    function edit( $id){
        $user=User::find($id);

        return view('admin.profile.edit', compact('user'));
    }
    function update(Request $request, string $id){
        $user=User::find($id);
        $user->name=$request->name;
        $user->email=$request->email;
        $user->password=$request->password;
        $user->save();
        return redirect("adminpro/$user->id");


    }
}
