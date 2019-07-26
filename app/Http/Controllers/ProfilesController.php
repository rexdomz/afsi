<?php

namespace App\Http\Controllers;

use Illuminate\Support\Collection;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Profiles;
use App\Http\Resources\Profiles as ProfilesResource;
use App\Payments;
use App\Http\Resources\Payments as PaymentsResource;
use Carbon\Carbon;

class ProfilesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public $perpage = 20;

    public function index()
    {
        // Get profiles        
        $profiles = Profiles::orderBy('full_name', 'asc')
                    ->paginate(20);                        
                        
        //dd($profiles);                  
        // Return collection of articles as a resource               
        return ProfilesResource::collection($profiles);                
    }

    public function filtered_index()
    {
        // Get profiles
        $status = 1;
        $profiles = Profiles::where('status', '=', $status)
                    ->orderBy('full_name', 'asc')
                    ->paginate(20);                        
                        
        //dd($profiles);                  
        // Return collection of articles as a resource               
        return ProfilesResource::collection($profiles);                
    }

    public function get_profiles_by_area($id, $perpage)
    {
        // Get profiles         
        if ( $id > 0 ) {            
            $profiles = Profiles::where('area', $id)                        
                        ->orderBy('full_name', 'asc')
                        ->paginate($perpage);
        } else {            
            $profiles = Profiles::orderBy('full_name', 'asc')
                        ->paginate($perpage);            
        }

        // Return paginated records by area
        return ProfilesResource::collection($profiles);        
    }

    public function get_profiles_by_area_filtered($id, $perpage)
    {
        // Get profiles 
        $status = 1;   
        if ( $id > 0 ) {            
            $profiles = Profiles::where('area', $id)
                        ->where('status', '=', $status)
                        ->orderBy('full_name', 'asc')
                        ->paginate($perpage);
        } else {            
            $profiles = Profiles::where('status', '=', $status)
                        ->orderBy('full_name', 'asc')
                        ->paginate($perpage);            
        }

        // Return paginated records by area
        return ProfilesResource::collection($profiles);        
    }


    public function get_profiles_by_keyword($keyword)
    {
        // Get profiles                
        $profiles = Profiles::where('full_name', 'like', '%' . $keyword . '%')->get();   
       
        // Return paginated records by area
        return ProfilesResource::collection($profiles);        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            $profile = $request->isMethod('put') ? Profiles::findOrFail($request->profile_id) : new Profiles;            
        
            $profile->id = $request->input('profile_id');
            $profile->full_name = $request->input('full_name');
            $profile->address = $request->input('address');
            $profile->area = $request->input('area');
            $profile->loan = $request->input('loan');
            $profile->interest = $request->input('interest');
            $profile->term = $request->input('term');
            $profile->status = $request->input('status');
            $profile->date_from = $request->input('date_from');      
            $profile->date_to = $request->input('date_to');            
            $profile->contact = $request->input('contact');

            $profile->promisor_certno = $request->input('promisor_certno');
            $profile->promisor_cert_issued_on = $request->input('promisor_cert_issued_on');
            $profile->promisor_cert_issued_at = $request->input('promisor_cert_issued_at');
            $profile->comaker1_name = $request->input('comaker1_name');
            $profile->comaker1_certno = $request->input('comaker1_certno');
            $profile->comaker1_cert_issued_on = $request->input('comaker1_cert_issued_on');
            $profile->comaker1_cert_issued_at = $request->input('comaker1_cert_issued_at');
            $profile->comaker2_name = $request->input('comaker2_name');
            $profile->comaker2_certno = $request->input('comaker2_certno');
            $profile->comaker2_cert_issued_on = $request->input('comaker2_cert_issued_on');
            $profile->comaker2_cert_issued_at = $request->input('comaker2_cert_issued_at');
            
            $profile->sum_in_words = $request->input('sum_in_words');
            $profile->per_day_in_words = $request->input('per_day_in_words');

            if($profile->save()) {
                return new ProfilesResource($profile);
            }
            
        } catch (ModelNotFoundException $ex) {
        } catch (Exception $ex) {
            abort(500, 'Could not create office or assign it to administrator');
        }

    }


    public function set_account(Request $request)
    {
        try {
            $profile = $request->isMethod('put') ? Profiles::findOrFail($request->profile_id) : '';            
        
            $profile->id = $request->input('profile_id');
            $profile->full_name = $request->input('full_name');
            $profile->address = $request->input('address');
            $profile->area = $request->input('area');
            $profile->loan = $request->input('loan');
            $profile->interest = $request->input('interest');
            $profile->term = $request->input('term');
            $profile->status = $request->input('status');
            $profile->date_from = $request->input('date_from');      
            $profile->date_to = $request->input('date_to');            
            $profile->contact = $request->input('contact');

            $profile->promisor_certno = $request->input('promisor_certno');
            $profile->promisor_cert_issued_on = $request->input('promisor_cert_issued_on');
            $profile->promisor_cert_issued_at = $request->input('promisor_cert_issued_at');
            $profile->comaker1_name = $request->input('comaker1_name');
            $profile->comaker1_certno = $request->input('comaker1_certno');
            $profile->comaker1_cert_issued_on = $request->input('comaker1_cert_issued_on');
            $profile->comaker1_cert_issued_at = $request->input('comaker1_cert_issued_at');
            $profile->comaker2_name = $request->input('comaker2_name');
            $profile->comaker2_certno = $request->input('comaker2_certno');
            $profile->comaker2_cert_issued_on = $request->input('comaker2_cert_issued_on');
            $profile->comaker2_cert_issued_at = $request->input('comaker2_cert_issued_at');
            
            $profile->sum_in_words = $request->input('sum_in_words');
            $profile->per_day_in_words = $request->input('per_day_in_words');

            if($profile->save()) {
                return new ProfilesResource($profile);
            }
            
        } catch (ModelNotFoundException $ex) {
        } catch (Exception $ex) {
            abort(500, 'Could not create office or assign it to administrator');
        }


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // Get article
        $profile = Profiles::findOrFail($id);

        // Return single article as a resource
        return new ProfilesResource($profile);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Get profile
        $profile = Profiles::findOrFail($id);

        if($profile->delete()) {
            return new ProfilesResource($profile);
        }                  
    }
}
