<?php

namespace App\Http\Controllers;

use App\Models\Url;
use App\Models\Countclikedurl;
use DB;
use Illuminate\Support\Facades\Auth;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
    
        $data= Url::where('user_id',Auth::user()->id)->get();
        $urlclickcounts=   DB::table('countclikedurls')
        ->select('urls.id as url_id',DB::raw('count(countclikedurls.url_id) as clickedcount'))
        ->leftJoin('urls', 'countclikedurls.url_id', '=', 'urls.id')
        ->where('urls.user_id',Auth::user()->id)
        ->groupBy('urls.id')
        ->get();;
        $combinedData = [];
        foreach ($data as $url) {
            $clickCount = $this->findClickCount($url->id, $urlclickcounts);

            $combinedData[] = [
                'id' => $url->id,
                'longurl' => $url->longurl,
                'shorturl' => $url->shorturl,
                'clickcount' =>$clickCount,
            ];
        }
    
        return view('home', [
            'data' => $combinedData,
        ]);

    }

    private function findClickCount($urlId, $clickCounts)
{
    foreach ($clickCounts as $clickCount) {
        if ($clickCount->url_id == $urlId) {
            return $clickCount->clickedcount;
        }
    }
    return 0; 
}

}
