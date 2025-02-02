<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Profiles;
use App\Payments;
use App\Area;
use Carbon\Carbon;
//use App\Http\Resources\Profiles as ProfilesResource;
//use App\Http\Resources\Payments as PaymentsResource;

class PrintController extends Controller
{
    public function index() {
        //
    }

    public function printPreview($id) {

        //get profile                
        $profile = Profiles::where('id', '=', $id)->first();
              
        // Get payments history
        $payments = Payments::where('profile_id', $id)->orderBy('date_pay', 'desc')->paginate(200);      
        
        $totalPayment = 0;        
        foreach($payments as $item) {
            $totalPayment += $item->pay;
        }

        $originalBalance = 0;
        $originalBalance = $profile->loan + ($profile->loan * ($profile->interest/100) * $profile->term);

        $ratePerDay = 0;
        $ratePerDay = $originalBalance/($profile->term * 30);        

        // Return paginated records by area                
        return view('printresult', array('payments' => $payments, 'profile' => $profile, 'totalPayment' => $totalPayment, 'originalBalance' => $originalBalance, 'ratePerDay' => $ratePerDay));
    }

    public function printQouta($id, $collector) {
        //get profile                
        if ($id >= 0) {
            $profiles = Profiles::where('area', '=', $id)->orderBy('full_name', 'asc')->get();
        } else {
            $profiles = Profiles::orderBy('full_name', 'asc')->get();
        }

        $daily = 0;
        $weekly = 0;
        foreach($profiles as $profile) {
            $daily += (($profile->loan) + ($profile->loan * ($profile->interest/100) * $profile->term)) / ($profile->term * 30);
        }
        $weekly = $daily * 7;

        return view('printqouta', array('profiles' => $profiles, 'collector'=> $collector, 'daily' => $daily, 'weekly'=>$weekly ));
    }

    public function printPromisory($id) {

        //get profile                
        $profile = Profiles::where('id', '=', $id)->first();
              
        // Get payments history
        $payments = Payments::where('profile_id', $id)->orderBy('date_pay', 'desc')->paginate(200);      
        
        $totalPayment = 0;        
        foreach($payments as $item) {
            $totalPayment += $item->pay;
        }

        $originalBalance = 0;
        $originalBalance = $profile->loan + ($profile->loan * ($profile->interest/100) * $profile->term);

        $ratePerDay = 0;
        $ratePerDay = $originalBalance/($profile->term * 30);                

        // Return paginated records by area                
        return view('promisory', array('payments' => $payments, 'profile' => $profile, 'totalPayment' => $totalPayment, 'originalBalance' => $originalBalance, 'ratePerDay' => $ratePerDay));        
    }

    public function printCC($id, $type) {
        //get profile   
        $stat = 1;        
        if ($id >= 0) {

            switch($type) {
                case 1:
                    $profiles = Profiles::where('area', $id)   
                    ->where('status', '=', $stat)                      
                    ->orderBy('full_name', 'asc')
                    ->get();
                    break;
                case 2:                    
                    $profiles = Profiles::where('area', $id)    
                    ->where('status', '=', $stat) 
                    ->whereDate('date_to', '>', Carbon::now()->toDateTimeString())                
                    ->orderBy('full_name', 'asc')
                    ->get();
                    break;
                case 3:                    
                    $profiles = Profiles::where('area', $id)        
                    ->where('status', '=', $stat) 
                    ->whereDate('date_to', '<=', Carbon::now()->toDateTimeString())                
                    ->orderBy('full_name', 'asc')
                    ->get();
                    break;
            }

            $area = Area::where('id', '=', $id)->get();
            foreach($area as $a) {            
                $area = json_encode($a);
            }

        } else {
            $profiles = Profiles::where('status', '=', $stat)
                        ->orderBy('full_name', 'asc')
                        ->get();
            $area = '';
        }        
                
        return view('printcc', array('profiles' => $profiles, 'area'=> $area));
    }


}