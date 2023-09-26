<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Url;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
class UrlController extends Controller
{
    public function createUrl(Request $request)
    {
        $request->validate([
            'longurl' => 'required|string|max:255',
        ]);
        $data = $request->all();
        $data['user_id'] = Auth::user()->id;
        $data['longurl'] = $request->longurl;
        $data['shorturl'] = "https://shorturl/".Str::random(5);
        Url::create($data);
        return back()->with('success','data added successfully');
    }

}
