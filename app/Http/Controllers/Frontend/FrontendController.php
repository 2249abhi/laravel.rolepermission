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

    public function interview($categorySlug)
    {
       
       // $data = Post::select('title','content')->where('category_id',3)->get();
       $data = Post::select('title','content')->with('category')
            ->whereHas('category', function ($query) use ($categorySlug) {
                $query->where('slug', $categorySlug);
            })
            //->where('slug', $postSlug)
            ->get();

        $title = ucfirst($categorySlug).' Interview Questions and Answers';
        return view('frontend.interview',compact('title','data'));
    }

    // public function interview()
    // {
       
    //     $data = Post::select('title','content')->where('category_id',3)->get()->toArray();

    //     echo '<pre>';
    //     print_r($data);die;

    //     return view('frontend.interview',compact('data'));
    // }
}
