<?php

namespace App\Http\Resources\Booking;

use Illuminate\Http\Resources\Json\JsonResource;

class BookingListResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'client' => [
                'id' => $this->client->id,
                'name' => $this->client->name,
                'phone' => $this->client->phone,
            ],
            'room' => [
                'id' => $this->room->id,
                'room_number' => $this->room->room_number,
                'floor' => $this->room->floor,
            ],
            'check_in_date' => $this->check_in_date,
            'check_out_date' => $this->check_out_date,
            'adults' => $this->adults,
            'total_price' => $this->total_price,
        ];
    }
}
