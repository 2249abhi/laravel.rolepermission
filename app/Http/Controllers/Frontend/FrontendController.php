<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;


class FrontendController extends Controller
{
   

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('frontend.index');
    }

    public function interview()
    {
       
        $data = Post::select('title','content')->where('category_id',3)->get();

        return view('frontend.interview',compact('data'));
    }
}
