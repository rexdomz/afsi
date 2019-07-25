<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class Profiles extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        //return parent::toArray($request);

        return [
            'id' => $this->id,
            'full_name' => $this->full_name,
            'address' => $this->address,
            'area' => $this->area,
            'loan' => $this->loan,
            'interest' => $this->interest,
            'term' => $this->term,
            'status' => $this->status,
            'date_from' => $this->date_from,
            'date_to' => $this->date_to,
            'contact' => $this->contact,

            'promisor_certno' => $this->promisor_certno,
            'promisor_cert_issued_on' => $this->promisor_cert_issued_on,
            'promisor_cert_issued_at' => $this->promisor_cert_issued_at,
            'comaker1_name' => $this->comaker1_name,
            'comaker1_certno' => $this->comaker1_certno,
            'comaker1_cert_issued_on' => $this->comaker1_cert_issued_on,
            'comaker1_cert_issued_at' => $this->comaker1_cert_issued_at,            
            'comaker2_name' => $this->comaker2_name,
            'comaker2_certno' => $this->comaker2_certno,
            'comaker2_cert_issued_on' => $this->comaker2_cert_issued_on,
            'comaker2_cert_issued_at' => $this->comaker2_cert_issued_at,
            'sum_in_words' => $this->sum_in_words,
            'per_day_in_words' => $this->per_day_in_words,

            'totalpay' => $this->totalpay,
            'dailyrate' => $this->dailyrate,
            'amountloan' => $this->amountloan
            //'etc' => $this->etc            
        ];
    }
}
