<?php

namespace App\Http\Requests\Booking;

use App\Http\Requests\ApiRequest;

class CreateBookingRequest extends ApiRequest
{
    public function rules()
    {
        return [
            'client_id' => ['required', 'exists:clients,id'],
            'room_id' => ['required', 'exists:rooms,id'],
            'check_in_date' => ['required', 'date', 'date_format:Y-m-d', 'after_or_equal:today'],
            'check_out_date' => ['required', 'date', 'date_format:Y-m-d', 'after:check_in_date'],
            'adults' => ['required', 'integer', 'min:1'],
            'total_price' => ['required', 'integer', 'min:0'],
        ];
    }

    public function messages()
    {
        return [
            'client_id.required' => 'Необходим идентификатор клиента.',
            'room_id.required' => 'Необходим идентификатор номера.',
            'check_in_date.required' => 'Необходима дата заезда.',
            'check_out_date.required' => 'Необходима дата выезда.',
            'adults.required' => 'Необходимо указать количество взрослых.',
            'adults.min' => 'Минимальное количество взрослых — 1.',
            'total_price.required' => 'Необходима общая стоимость.',
        ];
    }
}
