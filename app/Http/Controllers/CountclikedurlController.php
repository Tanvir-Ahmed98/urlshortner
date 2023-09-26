<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Countclikedurl;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
class CountclikedurlController extends Controller
{
    public function countClick(Request $request)
    {
        
        $data=$request->all();
        $data['user_id'] = Auth::user()->id;
        $data['url_id'] = $request->id;
        Countclikedurl::create($data);
        return Redirect::to($request->longurl);
    }
}
