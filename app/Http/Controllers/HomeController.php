<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

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
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }   

    public function register()
    {
        return view('registration');
    }

    /*public function register()
    {
        return view('registration');
    }*/

    public function registered_users()
    {
        return view('regusers');
    }

    public function collection_sales()
    {
        return view('collector-collections');
    }

    public function collector()
    {
        return view('collector-view');
    }

    public function area()
    {
        return view('areas');
    }

    public function release() {
        return view('release');
    }

}
