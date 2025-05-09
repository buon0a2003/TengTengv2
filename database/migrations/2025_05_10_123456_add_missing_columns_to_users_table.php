<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('users', function (Blueprint $table) {
            if (!Schema::hasColumn('users', 'image')) {
                $table->string('image')->nullable();
            }

            if (!Schema::hasColumn('users', 'cccd')) {
                $table->string('cccd')->nullable();
            }

            if (!Schema::hasColumn('users', 'nhanvien_id')) {
                $table->unsignedBigInteger('nhanvien_id')->nullable();
                $table->foreign('nhanvien_id')
                    ->references('id')
                    ->on('nhanvien')
                    ->onDelete('set null');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            if (Schema::hasColumn('users', 'nhanvien_id')) {
                $table->dropForeign(['nhanvien_id']);
            }

            $table->dropColumn(['image', 'cccd', 'nhanvien_id']);
        });
    }
};
