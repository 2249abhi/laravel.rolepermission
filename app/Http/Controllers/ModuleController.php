<?php

namespace App\Http\Controllers;

use App\Models\Module;
use App\Models\Permission;
use Illuminate\Http\Request;

class ModuleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
         $this->middleware('permission:module-list|module-create|module-edit|module-delete', ['only' => ['index','show']]);
         $this->middleware('permission:module-create', ['only' => ['create','store']]);
         $this->middleware('permission:module-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:module-delete', ['only' => ['destroy']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $pid = $request->input('pid');

        //return pid;
            if(isset($pid) && !empty($pid))
            {
                $modules = Module::where('pid',$request->input('pid'))->paginate(10);
               
            } else {
                $modules = Module::where('pid',0)->paginate(10);
            }

            return view('modules.index',compact('modules'))->with('i', (request()->input('page', 1) - 1) * 10);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $modules = Module::where('pid',0)->pluck('name', 'id')->toArray();
        array_unshift($modules, [0 => 'Root']);
        return view('modules.create',compact('modules'));
    }
    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate([
            'pid' => 'required',
            'name' => 'required',
            'detail' => 'required',
            //'action' => 'required',
            //'depth' => 'required',
        ]);
        $input = $request->all();

        $data = [
            'pid'           => $input['pid'],
            'name'          => $input['name'],
            'action'        => $input['pid'] == 0 ? '' : $input['action'],
            'depth'         => $input['depth'],
            'description'   => $input['detail'],
            'controller'    => 'none',
            'cid'           => 0,
            'icon'          => 'fa fa-folder'
        ];

       $module = Module::create($data);

       if($input['pid'] == 0 && !empty($input['submodule']) && !empty($module->id))
       {
            foreach ($input['submodule'] as $key => $module_name) {

                //Create Permission to give as per roles
                $permission_data = [
                    'name' => strtolower($input['name']).'-'.$module_name,
                    'guard_name' => 'web'
                ];

                Permission::create($permission_data);

                // Create all sub modules
                $submodule_data = [
                    'pid'           => $module->id,
                    'name'          => ucfirst($module_name),
                    'action'        => $module_name,
                    'depth'         => ($key+1),
                    'description'   => ucfirst($input['name']).'-'.ucfirst($module_name),
                    'controller'    => strtolower($input['name']),
                    'cid'           => 0,
                    'icon'          => 'fa fa-folder'
                ];
                
                Module::create($submodule_data);
            }
       }

        //=========================================================
        /*
        $file_path = base_path('routes/web1.php');
        

        //write route
        //========================
        $contents = file_get_contents($file_path);

        // Define the particular text and module name
$particular_text = "Route::resource('rolepermissions', RolepermissionController::class);";
$particular_namespace = "use App\Http\Controllers\RolepermissionController;";
$module_name = "scheme";
$routeName = "Route::resource('".$module_name."s', ".ucfirst($module_name)."Controller::class);";
$text_to_append = $routeName."\n    ";

// Step 1: Update the route section

// Find position of the particular text
$position = strpos($contents, $particular_text);

if ($position !== false) {
    // Append the new route content
    $updated_contents = substr_replace($contents, $text_to_append, $position, 0);
} else {
    $updated_contents = $contents; // If no position found, keep contents as is
}

// Step 2: Update the namespace section

// Find position of the particular namespace
$namespace_position = strpos($updated_contents, $particular_namespace);

if ($namespace_position !== false) {
    $capital_module_name = ucfirst($module_name)."Controller;";
    $namespace_to_append = 'use App\Http\Controllers\\'.$capital_module_name."\n";
    $updated_contents = substr_replace($updated_contents, $namespace_to_append, $namespace_position, 0);
}

// Step 3: Write the updated contents back to the file

file_put_contents($file_path, $updated_contents);*/
        //=========================================================
    
        return redirect()->route('modules.index')->with('success','Module created successfully.');
    }
    
    /**
     * Display the specified resource.
     *
     * @param  \App\Module  $module
     * @return \Illuminate\Http\Response
     */
    public function show(Module $module)
    {
        return view('modules.show',compact('module'));
    }
    
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Module  $module
     * @return \Illuminate\Http\Response
     */
    public function edit(Module $module)
    {
        return view('modules.edit',compact('module'));
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Module  $module
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Module $module)
    {
         request()->validate([
            'name' => 'required',
            'detail' => 'required',
        ]);
    
        $module->update($request->all());
    
        return redirect()->route('modules.index')
                        ->with('success','Module updated successfully');
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Module  $module
     * @return \Illuminate\Http\Response
     */
    public function destroy(Module $module)
    {
        $module->delete();
    
        return redirect()->route('modules.index')
                        ->with('success','Module deleted successfully');
    }

}
