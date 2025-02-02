<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

/*** Profiles Endpoints ***/
// List profiles
Route::get('profiles', 'ProfilesController@index');
Route::get('filteredprofiles', 'ProfilesController@filtered_index');

//Get Release
Route::get('filteredrelease', 'ProfilesController@filtered_release');

// List profiles by area
Route::get('profilesbyarea/{id}/{perpage?}', 'ProfilesController@get_profiles_by_area');
Route::get('profilesbyareatype/{id}/{status}/{perpage?}', 'ProfilesController@get_profiles_by_area_type');
Route::get('filteredprofilesbyarea/{id}/{perpage?}', 'ProfilesController@get_profiles_by_area_filtered');

// List profiles by search key
Route::get('profilesbykeyword/{keyword}', 'ProfilesController@get_profiles_by_keyword');

// List single profile
Route::get('profile/{id}', 'ProfilesController@show');

// Create new profile
Route::post('profile', 'ProfilesController@store');

// Update profile
Route::put('profiler', 'ProfilesController@store');

// Set account status
Route::put('setaccount', 'ProfilesController@set_account');

// Delete profile
Route::delete('profile/{id}', 'ProfilesController@destroy');


/***Area Endpoints ***/
//List areas
Route::get('areas', 'AreaController@index');

// List single area
Route::get('area/{id}', 'AreaController@show');

// Create new area
Route::post('area', 'AreaController@store');

// Update area
Route::put('area', 'AreaController@store');

// Delete area
Route::delete('area/{id}', 'AreaController@destroy');


/***Payment Endpoints ***/
//List payments
Route::get('payments', 'PaymentController@index');

// List profiles by area
Route::get('paymentsbyid/{id}/{perpage?}', 'PaymentController@get_payments_by_user');

// Create new payment
Route::post('newpayment', 'PaymentController@store');

// Update payment
Route::put('updatepayment', 'PaymentController@store');

// Delete payment
Route::delete('deletepayment/{id}', 'PaymentController@destroy');


/***Transaction Endpoints ***/
Route::get('searchparameter/{id}/{param}/{perpage?}', 'ProfilesController@search_param');


Route::fallback(function(){
    return response()->json([
        'message' => 'Page Not Found. If error persists, contact RexDomz'], 404);
});
