<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee', function (Blueprint $table) {
            $table->increments('id');
            $table->string('employee_name', 50);
            $table->string('position', 100);
            $table->dateTime('date'); 
            $table->double('rate', 5, 2);
            $table->double('cash_bond', 5, 2);
            $table->double('no_of_days', 5, 2);
            $table->double('sss_loan', 5, 2);
            $table->double('sss', 5, 2);
            $table->double('phil_health', 5, 2);
            $table->double('pagibig_fund', 5, 2);
            $table->double('revolving_fund', 5, 2);
            $table->double('cash_advance', 5, 2);
            $table->double('salary_loan', 5, 2);
            $table->double('short_card', 5, 2);            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employee');
    }
}
