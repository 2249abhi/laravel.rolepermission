<?php

use App\Http\Controllers\LanguageController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\WeatherController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Auth Routes
require __DIR__.'/auth.php';



// Language Switch
Route::get('language/{language}', [LanguageController::class, 'switch'])->name('language.switch');

Route::get('dashboard', 'App\Http\Controllers\Frontend\FrontendController@index')->name('dashboard');


Route::get('legislations', 'App\Http\Controllers\Frontend\FrontendController@submenu');

//Route::get("offerings/{slug?}", 'App\Http\Controllers\Frontend\FrontendController@offeringsMenu');
Route::get("offerings/{slug?}", 'App\Http\Controllers\Frontend\OfferingsController@offeringsMenu');

//routs for footer controller
Route::get("footer/{slug?}", 'App\Http\Controllers\Frontend\FooterController@index');
//Route::get("{$module_name}/{id}/{slug?}", ['as' => "{$module_name}.show", 'uses' => "{$controller_name}@show"]);
Route::get("connect/{slug?}", 'App\Http\Controllers\Frontend\ConnectController@index');

Route::get('ministry/{slug}', 'App\Http\Controllers\Frontend\MinistryController@index');

Route::get('awardajax', 'App\Http\Controllers\Frontend\OfferingsController@awardAjax')->name('award.ajax');

Route::get('legislationajax', 'App\Http\Controllers\Frontend\FrontendController@legislationajax')->name('legislation.ajax');

/*
*
*  Home Menu
*
* ---------------------------------------------------------------------
*/

     
	 //Route::get('women', 'App\Http\Controllers\Frontend\WomenController@womenIndex');
	

	//Route::group(['namespace' => '\Modules\Article\Http\Controllers\Frontend', 'as' => 'women.', 'middleware' => 'web', 'prefix' => ''], function () {
	//$module_name = 'women';
    //$controller_name = 'PagesController';
    //Route::get("{$module_name}", ['as' => "{$module_name}.index", 'uses' => "{$controller_name}@index"]);
    //Route::get("{$module_name}/{slug?}", ['as' => "{$module_name}.show", 'uses' => "{$controller_name}@show"]);
	//});
	 Route::get('women/{slug?}', 'App\Http\Controllers\Frontend\WomenController@womenMenu');
	 Route::get('child/{slug?}', 'App\Http\Controllers\Frontend\ChildController@childMenu');
	 Route::get('prospective-adoptive-parents/{slug?}', 'App\Http\Controllers\Frontend\ParentsController@prospectiveMenu');
	 Route::get("documents/{slug?}", 'App\Http\Controllers\Frontend\DocumentsController@documentsMenu');
	 Route::get("pregnant-lactating-women-children/{slug?}", 'App\Http\Controllers\Frontend\PregnantLactatingController@pregnantLactatingMenu');

/*
*
* Frontend Routes
*
* --------------------------------------------------------------------
*/
Route::group(['namespace' => 'App\Http\Controllers\Frontend', 'as' => 'frontend.','middleware' => 'web'], function () {
    Route::get('/', 'FrontendController@index')->name('index');
    Route::get('home', 'FrontendController@index')->name('home');
    Route::get('privacy', 'FrontendController@privacy')->name('privacy');
    Route::get('terms', 'FrontendController@terms')->name('terms');
	Route::get('/weather', [WeatherController::class, 'getWeather']);
	Route::get('/apipmmvy', [WeatherController::class, 'getPMMVY']);
	Route::get('/home-dashboard', 'HomeDashboardController@dashboard')->name('home-dashboard');
	Route::get('pmmvy-dashboard', 'HomeDashboardController@pmmvyDashboard')->name('pmmvy-Dashboard');
	Route::get('pmmvy-dashboard-data', 'HomeDashboardController@pmmvyDashboardData')->name('pmmvy-Dashboard-data');
	Route::get('aganwadi-dashboard', 'HomeDashboardController@aganwadiDashboard')->name('aganwadi-dashboard');
	Route::get('shakti-sadan-dashboard', 'HomeDashboardController@shaktiSadanDashboard')->name('shakti-sadan-dashboard');
	Route::get('shakti-dashboard-data', 'HomeDashboardController@shaktiDashboardData')->name('shakti-dashboard-data');
	Route::get('aganwadi-dashboard-data', 'HomeDashboardController@aganwadiDashboardData')->name('aganwadi-dashboard-data');
	Route::get('sag-dashboard', 'HomeDashboardController@sagDashboard')->name('sag-dashboard'); 
	Route::get('whc-dashboard', 'HomeDashboardController@whcDashboard')->name('wch-dashboard');
	Route::get('adoption-children', 'HomeDashboardController@adoptionChildren')->name('adoption-children');
	Route::get('osc-dashboard', 'HomeDashboardController@oscDashboard')->name('osc-dashboard'); 
	Route::get('nirbhaya-dashboard', 'HomeDashboardController@nirbhayaDashboard')->name('nirbhaya-dashboard'); 
	Route::get('bbbp-dashboard', 'HomeDashboardController@bbbpDashboard')->name('bbbp-dashboard');
    Route::get('bbbp-extra', 'HomeDashboardController@bbbpExtra')->name('bbbp-extra');	
	Route::get('vatsalaya-dashboard', 'HomeDashboardController@vatsalayaDashboard')->name('vatsalaya-dashboard'); 
	Route::get('vatsalaya-dashboard-data', 'HomeDashboardController@vatsalayaDashboardData')->name('vatsalaya-dashboard-data'); 
	Route::get('sag-dashboard-data', 'HomeDashboardController@sagDashboardData')->name('sag-dashboard-data');
	Route::get('trackchild-dashboard', 'HomeDashboardController@trckChildDashboard')->name('trackchild-dashboard');
	Route::get('trackchild-dashboard-data', 'HomeDashboardController@trackChildDashboardData')->name('trackchild-dashboard-data');
	Route::get('palna-dashboard-data', 'HomeDashboardController@palnaDashboardData')->name('palna-dashboard-data');
	Route::get('sakhi-niwas-dashboard', 'HomeDashboardController@sakhiNiwasDashboard')->name('sakhi-niwas-dashboard');
	Route::get('sakhi-dashboard-data', 'HomeDashboardController@sakhiDashboardData')->name('sakhi-dashboard-data');
    Route::get('palna-dashboard', 'HomeDashboardController@palnaDashboard')->name('palna-dashboard');
	Route::get('/copyright-policy', 'FrontendController@copyright_policy')->name('copyright-policy');
    Route::get('/hyperlinking-policy', 'FrontendController@hyperlinking_policy')->name('hyperlinking-policy ');
    Route::get('/disclaimer ', 'FrontendController@disclaimer')->name('disclaimer');
    Route::get('/help ', 'FrontendController@help')->name('help');
    Route::get('/sitemap', 'FrontendController@sitemap')->name('sitemap');
    Route::get('/feedback', 'FrontendController@feedback')->name('feedback');
    Route::get('/contact-us', 'FrontendController@contact_us')->name('contact-us');
    Route::get('/visitors-statistics', 'FrontendController@visitors_statistics')->name('visitors-statistics');
    Route::get('/web-information-manager', 'FrontendController@web_information_manager')->name('web-information-manager');
    Route::get('/faq', 'FrontendController@faq')->name('faq');
    Route::post('/addwowclass', 'FrontendController@addwowclass')->name('addwowclass');
    Route::post('/get-data', 'FrontendController@get_data')->name('get-data');
    Route::get('/organization-chart', 'FrontendController@organization_chart')->name('organization-chart');
    Route::get('/organization-chart1', 'FrontendController@organization_chart1')->name('organization-chart1');
    Route::post('/feedbackForm', 'FrontendController@feedbackForm')->name('feedbackForm');
     //frontend lang url
     Route::get('/change-lang', 'FrontlanguageController@changeLang')->name('change-lang');
	//Route::post('/feedbackForm',[FrontendController::class, 'feedbackForm'])->name('feedbackForm');
    Route::get('homesearch', 'HomeSearchController@index')->name('homesearch');
	
	Route::get('/reload-captcha', 'FrontendController@reloadCaptcha')->name('reload-captcha');
	
	
	    

        /*
        *
        *  Internship Programme
        *
        * ---------------------------------------------------------------------
        */

        Route::get('internship-programme', 'FrontendController@internshipprogramme')->name('internshipprogramme');
	
	   /*
        *
        *  Schemes Initiative
        *
        * ---------------------------------------------------------------------
        */
    Route::get('anganwadi', 'FrontendController@anganwadi')->name('anganwadi');
    Route::get('poshan', 'FrontendController@poshan')->name('poshan');
    Route::get('nirbhaya', 'FrontendController@poshan')->name('nirbhaya');
    Route::get('one-stop-centre-scheme', 'FrontendController@onestopcentrescheme')->name('onestopcentrescheme');
    Route::get('woman-help-line', 'FrontendController@womanhelpline')->name('womanhelpline');
    Route::get('scheme-adolescent-girls', 'FrontendController@schemeadolescentgirls')->name('schemeadolescentgirls');
    Route::get('beti-bachao-beti-padhao-scheme', 'FrontendController@betibachaobetipadhaoscheme')->name('betibachaobetipadhaoscheme');
    Route::get('nari-adalat', 'FrontendController@nariadalat')->name('nariadalat');
    Route::get('pradhan-mantri-matru-vandana-yojana', 'FrontendController@pradhanmantrimatruvandanayojana')->name('pradhanmantrimatruvandanayojana');
    Route::get('shakti-sadan', 'FrontendController@shaktisadan')->name('shaktisadan');
    Route::get('shakti-niwas', 'FrontendController@shaktiniwas')->name('shaktiniwas');
    Route::get('palana', 'FrontendController@palana')->name('palana');
    Route::get('nhew', 'FrontendController@nhew')->name('nhew');
    Route::get('mission-vatsalya', 'FrontendController@missionvatsalya')->name('missionvatsalya');
    Route::get('central-adoption-resource-authority', 'FrontendController@centraladoptionresourceauthority')->name('centraladoptionresourceauthority');
    Route::get('central-adoption-resource-authority', 'FrontendController@centraladoptionresourceauthority')->name('centraladoptionresourceauthority');
    Route::get('pm-carers-for-childern', 'FrontendController@pmcarersforchildern')->name('centraladoptionresourceauthority');
    
    /*
        *
        *  Legislation
        *
        * ---------------------------------------------------------------------
        */
    
        Route::get('women-related-legislation', 'FrontendController@womenrelatedlegislation')->name('womenrelatedlegislation');
        Route::get('child-related-legislation', 'FrontendController@childrelatedlegislation')->name('childrelatedlegislation');
        Route::get('nutrition-related-legislations', 'FrontendController@nutritionrelatedlegislations')->name('nutritionrelatedlegislations');
        Route::get('legislations', 'FrontendController@legislations')->name('legislations');

    
    
	
	
    Route::group(['middleware' => ['auth']], function () {
        /*
        *
        *  Users Routes
        *
        * ---------------------------------------------------------------------
        */
        $module_name = 'users';
        $controller_name = 'UserController';
        Route::get('profile/{id}', ['as' => "{$module_name}.profile", 'uses' => "{$controller_name}@profile"]);
        Route::get('profile/{id}/edit', ['as' => "{$module_name}.profileEdit", 'uses' => "{$controller_name}@profileEdit"]);
        Route::patch('profile/{id}/edit', ['as' => "{$module_name}.profileUpdate", 'uses' => "{$controller_name}@profileUpdate"]);
        Route::get('profile/changePassword/{id}', ['as' => "{$module_name}.changePassword", 'uses' => "{$controller_name}@changePassword"]);
        Route::patch('profile/changePassword/{id}', ['as' => "{$module_name}.changePasswordUpdate", 'uses' => "{$controller_name}@changePasswordUpdate"]);
        Route::get("{$module_name}/emailConfirmationResend/{id}", ['as' => "{$module_name}.emailConfirmationResend", 'uses' => "{$controller_name}@emailConfirmationResend"]);
        Route::delete("{$module_name}/userProviderDestroy", ['as' => "{$module_name}.userProviderDestroy", 'uses' => "{$controller_name}@userProviderDestroy"]);
   
   
       // Route::get("menuitems/update/{id}", ['as' => "menuitems.update", 'uses' => "MenuitemsController@update"]);
      //  Route::get("menuitems/{id}", ['as' => "menuitems.show", 'uses' => "MenuitemsController@show"]);

      //  Route::get("banners/update/{id}", ['as' => "banners.update", 'uses' => "BannersController@update"]);
      //  Route::get("banners/{id}", ['as' => "banners.show", 'uses' => "BannersController@show"]);

      //  Route::get("onlinelinks/update/{id}", ['as' => "onlinelinks.update", 'uses' => "OnlinelinksController@update"]);
      //  Route::get("onlinelinks/{id}", ['as' => "onlinelinks.show", 'uses' => "OnlinelinksController@show"]);

      //  Route::get("videogalleries/update/{id}", ['as' => "videogalleries.update", 'uses' => "VideoGalleriesController@update"]);
       // Route::get("videogalleries/{id}", ['as' => "videogalleries.show", 'uses' => "VideoGalleriesController@show"]);
    });
});

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth', 'can:view_backend']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});

/*
*
* Backend Routes
* These routes need view-backend permission
* --------------------------------------------------------------------
*/

Route::get('/home-admin/{loginh?}', function ($loginh = null) {
    return view('auth.login', compact('loginh'));
});

Route::group(['namespace' => 'App\Http\Controllers\Backend', 'prefix' => 'admin', 'as' => 'backend.', 'middleware' => ['auth', 'can:view_backend']], function () {
    /**
     * Backend Dashboard
     * Namespaces indicate folder structure.
     */
    Route::get('/', 'BackendController@index')->name('home');
    Route::get('dashboard', 'BackendController@index')->name('dashboard');
    Route::get('pages', 'PagesController@index')->name('pagelisting');
    Route::get('focus', 'FocusController@index')->name('focuslisting');
    Route::get('schemes', 'SchemesController@index')->name('schemeslisting');
    Route::get('accessonline', 'AccessonlineController@index')->name('accessonlinelisting');


    

    /*
     *
     *  Settings Routes
     *
     * ---------------------------------------------------------------------
     */
    Route::group(['middleware' => ['permission:edit_settings']], function () {
        $module_name = 'settings';
        $controller_name = 'SettingController';
        Route::get("{$module_name}", "{$controller_name}@index")->name("{$module_name}");
        Route::post("{$module_name}", "{$controller_name}@store")->name("{$module_name}.store");
    });

    /*
    *
    *  Notification Routes
    *
    * ---------------------------------------------------------------------
    */
    $module_name = 'notifications';
    $controller_name = 'NotificationsController';
    Route::get("{$module_name}", ['as' => "{$module_name}.index", 'uses' => "{$controller_name}@index"]);
    Route::get("{$module_name}/markAllAsRead", ['as' => "{$module_name}.markAllAsRead", 'uses' => "{$controller_name}@markAllAsRead"]);
    Route::delete("{$module_name}/deleteAll", ['as' => "{$module_name}.deleteAll", 'uses' => "{$controller_name}@deleteAll"]);
    Route::get("{$module_name}/{id}", ['as' => "{$module_name}.show", 'uses' => "{$controller_name}@show"]);

    /*
    *
    *  Backup Routes
    *
    * ---------------------------------------------------------------------
    */
    $module_name = 'backups';
    $controller_name = 'BackupController';
    Route::get("{$module_name}", ['as' => "{$module_name}.index", 'uses' => "{$controller_name}@index"]);
    Route::get("{$module_name}/create", ['as' => "{$module_name}.create", 'uses' => "{$controller_name}@create"]);
    Route::get("{$module_name}/download/{file_name}", ['as' => "{$module_name}.download", 'uses' => "{$controller_name}@download"]);
    Route::get("{$module_name}/delete/{file_name}", ['as' => "{$module_name}.delete", 'uses' => "{$controller_name}@delete"]);

    /*
    *
    *  Roles Routes
    *
    * ---------------------------------------------------------------------
    */
    $module_name = 'roles';
    $controller_name = 'RolesController';
    Route::resource("{$module_name}", "{$controller_name}");

    /*
    *
    *  Pages Routes
    *
    * ---------------------------------------------------------------------
    *
    $module_name = 'pages';
    $controller_name = 'PagesController';
    Route::resource("{$module_name}", "{$controller_name}");*/





    /*
    *
    *  Users Routes
    *
    * ---------------------------------------------------------------------
    */
    $module_name = 'users';
    $controller_name = 'UserController';
    Route::get("{$module_name}/profile/{id}", ['as' => "{$module_name}.profile", 'uses' => "{$controller_name}@profile"]);
    Route::get("{$module_name}/profile/{id}/edit", ['as' => "{$module_name}.profileEdit", 'uses' => "{$controller_name}@profileEdit"]);
    Route::patch("{$module_name}/profile/{id}/edit", ['as' => "{$module_name}.profileUpdate", 'uses' => "{$controller_name}@profileUpdate"]);
    Route::get("{$module_name}/emailConfirmationResend/{id}", ['as' => "{$module_name}.emailConfirmationResend", 'uses' => "{$controller_name}@emailConfirmationResend"]);
    Route::delete("{$module_name}/userProviderDestroy", ['as' => "{$module_name}.userProviderDestroy", 'uses' => "{$controller_name}@userProviderDestroy"]);
    Route::get("{$module_name}/profile/changeProfilePassword/{id}", ['as' => "{$module_name}.changeProfilePassword", 'uses' => "{$controller_name}@changeProfilePassword"]);//->name('changeprofilepassword');
    Route::patch("{$module_name}/profile/changeProfilePassword/{id}", ['as' => "{$module_name}.changeProfilePasswordUpdate", 'uses' => "{$controller_name}@changeProfilePasswordUpdate"]);
    Route::get("{$module_name}/changePassword/{id}", ['as' => "{$module_name}.changePassword", 'uses' => "{$controller_name}@changePassword"]);
    Route::patch("{$module_name}/changePassword/{id}", ['as' => "{$module_name}.changePasswordUpdate", 'uses' => "{$controller_name}@changePasswordUpdate"]);
    Route::get("{$module_name}/trashed", ['as' => "{$module_name}.trashed", 'uses' => "{$controller_name}@trashed"]);
    Route::patch("{$module_name}/trashed/{id}", ['as' => "{$module_name}.restore", 'uses' => "{$controller_name}@restore"]);
    Route::get("{$module_name}/index_data", ['as' => "{$module_name}.index_data", 'uses' => "{$controller_name}@index_data"]);
    Route::get("{$module_name}/index_list", ['as' => "{$module_name}.index_list", 'uses' => "{$controller_name}@index_list"]);
    Route::resource("{$module_name}", "{$controller_name}");
    Route::patch("{$module_name}/{id}/block", ['as' => "{$module_name}.block", 'uses' => "{$controller_name}@block", 'middleware' => ['permission:block_users']]);
    Route::patch("{$module_name}/{id}/unblock", ['as' => "{$module_name}.unblock", 'uses' => "{$controller_name}@unblock", 'middleware' => ['permission:block_users']]);
});
