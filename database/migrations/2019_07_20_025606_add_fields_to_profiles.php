<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFieldsToProfiles extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('profiles', function (Blueprint $table) {
            $table->string('promisor_certno', 20)->nullable()->after('contact');
            $table->string('promisor_cert_issued_on', 20)->nullable()->after('contact');
            $table->string('promisor_cert_issued_at', 20)->nullable()->after('contact');
            $table->string('comaker1_name', 80)->nullable()->after('contact');
            $table->string('comaker1_certno', 20)->nullable()->after('contact');
            $table->string('comaker1_cert_issued_on', 20)->nullable()->after('contact');
            $table->string('comaker1_cert_issued_at', 20)->nullable()->after('contact');
            $table->string('comaker2_name', 80)->nullable()->after('contact');
            $table->string('comaker2_certno', 20)->nullable()->after('contact');
            $table->string('comaker2_cert_issued_on', 20)->nullable()->after('contact');
            $table->string('comaker2_cert_issued_at', 20)->nullable()->after('contact');
            $table->string('sum_in_words', 100)->nullable()->after('contact');
            $table->string('per_day_in_words', 100)->nullable()->after('contact');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('profiles', function (Blueprint $table) {
            //
        });
    }
}
