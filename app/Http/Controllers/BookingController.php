<?php

namespace App\Http\Controllers;

use App\Http\Requests\Booking\CreateBookingRequest;
use App\Http\Resources\Booking\BookingListResource;
use App\Http\Resources\Booking\BookingResource;
use App\Models\Booking;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Resources\Json\JsonResource;

class BookingController extends Controller
{
    public function getBookingList(): JsonResource
    {
        $bookings = Booking::all();

        return BookingListResource::collection($bookings);
    }

    public function getBookingById(Booking $booking): JsonResource
    {
        return new BookingResource($booking);
    }

    public function createBooking(CreateBookingRequest $request): JsonResponse
    {
        $validated = $request->validated();

        $booking = Booking::create($validated);

        return response()->json([
            'status' => 'success',
            'data' => $booking
        ], 201);
    }
}
