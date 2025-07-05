<?php

use App\Http\Controllers\BookingController;
use Illuminate\Support\Facades\Route;

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

Route::group(['prefix' => 'booking'] , function (){
    Route::get('/', [BookingController::class, 'getBookingList'])->name('get_booking_list');
    Route::get('/{booking}', [BookingController::class, 'getBookingById'])->name('get_booking');
    Route::post('/create', [BookingController::class, 'createBooking'])->name('create_booking');
});
