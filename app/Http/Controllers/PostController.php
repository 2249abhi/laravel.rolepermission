<?php
    
namespace App\Http\Controllers;
    
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Post;
use App\Models\Category;
use DB;
use Hash;
use Illuminate\Support\Arr;
    
class PostController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:post-list|post-create|post-edit|post-delete', ['only' => ['index','show']]);
         $this->middleware('permission:post-create', ['only' => ['create','store']]);
         $this->middleware('permission:post-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:post-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $pagination = 20;
        $query = Post::with('category')->orderBy('id', 'DESC');
        
        // Get all categories for dropdown
        $categories = Category::orderBy('name', 'ASC')->get();
        
        // Search by title
        if ($request->has('title') && !empty($request->title)) {
            $query->where('title', 'LIKE', "%{$request->title}%");
        }
        
        // Search by category
        if ($request->has('category') && !empty($request->category)) {
            $query->where('category_id', $request->category);
        }
        
        // Search by slug
        if ($request->has('slug') && !empty($request->slug)) {
            $query->where('slug', 'LIKE', "%{$request->slug}%");
        }
        
        $data = $query->paginate($pagination);
        return view('posts.index', compact('data', 'categories'))
            ->with('i', ($request->input('page', 1) - 1) * $pagination);
    }
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::pluck('name','id')->all();
        return view('posts.create',compact('categories'));
    }
    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required'
        ]);
    
        $input = $request->all();

        $input['slug'] = str_replace(" ","-",strtolower($input['title']));
    
        $post = Post::create($input);
    
        return redirect()->route('posts.index')
                        ->with('success','Post created successfully');
    }
    
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::find($id);
        return view('posts.show',compact('post'));
    }

    public function display($categorySlug, $postSlug)
    {
        // Fetch the post with the category relation
        $post = Post::with('category')
            ->whereHas('category', function ($query) use ($categorySlug) {
                $query->where('slug', $categorySlug);
            })
            ->where('slug', $postSlug)
            ->firstOrFail();

        return view('frontend.post.display', compact('post'));
    }
    
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::find($id);
        $categories = Category::pluck('name','id')->all();
    
        return view('posts.edit',compact('post','categories'));
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // $this->validate($request, [
        //     'name' => 'required',
            
        // ]);
    
        $input = $request->all();
       
        $post = Post::find($id);

        $input['slug'] = str_replace(" ","-",strtolower($input['title']));
        $post->update($input);
        return redirect()->route('posts.index')
                        ->with('success','Post updated successfully');
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Post::find($id)->delete();
        return redirect()->route('post.index')
                        ->with('success','Post deleted successfully');
    }
}