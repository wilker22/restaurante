<?php

namespace App\Http\Controllers\Cashier;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CashierController extends Controller
{
    // First Page of Cashier
    public function index(){
        return view('cashier.index');
    }
}
