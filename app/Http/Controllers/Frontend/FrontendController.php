<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;


class FrontendController extends Controller
{
   

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $keywords = 'PHP interview questions, MySQL interview questions, Laravel interview questions, JavaScript interview questions, API interview questions, web development tutorials, coding interview questions, programming Q&A, developer resources, backend development, frontend development';
        $description = 'GetInfoPlus provides top interview questions and answers on PHP, MySQL, Laravel, JavaScript, APIs, and more. Enhance your coding skills, prepare for job interviews, and stay updated with the latest web development trends!';
        return view('frontend.index',compact('keywords','description'));
    }

    public function interview($categorySlug)
    {
       
       $c_data = Category::select('meta_keyword','meta_description')->where('slug',$categorySlug)->first();
       
       $keywords = $c_data->meta_keyword;
       $description = $c_data->meta_description;
       
       $data = Post::select('title','content')->with('category')
            ->whereHas('category', function ($query) use ($categorySlug) {
                $query->where('slug', $categorySlug);
            })
            //->where('slug', $postSlug)
            ->get();

        $title = ucfirst($categorySlug).' Interview Questions and Answers';
        return view('frontend.interview',compact('title','data','keywords','description'));
    }

    // public function interview()
    // {
       
    //     $data = Post::select('title','content')->where('category_id',3)->get()->toArray();

    //     echo '<pre>';
    //     print_r($data);die;

    //     return view('frontend.interview',compact('data'));
    // }
}
