<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('cache', function (Blueprint $table) {
            $table->string('key')->primary();
            $table->mediumText('value');
            $table->integer('expiration');
        });

        Schema::create('cache_locks', function (Blueprint $table) {
            $table->string('key')->primary();
            $table->string('owner');
            $table->integer('expiration');
        });

        Schema::create('chitietphieudieuchuyen', function (Blueprint $table) {
            $table->integer('id', true)->unique('mactpck');
            $table->string('phieudieuchuyen_id', 100)->nullable();
            $table->integer('vattu_id')->nullable();
            $table->decimal('SoLuong', 10)->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::create('chitietphieunhap', function (Blueprint $table) {
            $table->integer('id', true)->unique('mactpn');
            $table->string('phieunhap_id', 100)->nullable();
            $table->integer('vattu_id')->nullable();
            $table->decimal('SoLuong', 10)->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();
            $table->integer('vitri_id')->nullable();

            $table->primary(['id']);
        });

        Schema::create('chitietphieuxuat', function (Blueprint $table) {
            $table->integer('id', true)->unique('mactpx');
            $table->string('phieuxuat_id', 100)->nullable();
            $table->integer('vattu_id')->nullable();
            $table->integer('tonkho_id')->nullable();
            $table->decimal('SoLuong', 10)->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::create('donvitinh', function (Blueprint $table) {
            $table->integer('id', true)->unique('madvt');
            $table->string('TenDVT', 50)->nullable();
            $table->string('Mota', 50)->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::create('dummy', function (Blueprint $table) {
            $table->integer('id')->nullable();
        });

        Schema::create('exports', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamp('completed_at')->nullable();
            $table->string('file_disk');
            $table->string('file_name')->nullable();
            $table->string('exporter');
            $table->unsignedInteger('processed_rows')->default(0);
            $table->unsignedInteger('total_rows');
            $table->unsignedInteger('successful_rows')->default(0);
            $table->unsignedBigInteger('user_id')->index('exports_user_id_foreign');
            $table->timestamps();
        });

        Schema::create('failed_import_rows', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->longText('data');
            $table->unsignedBigInteger('import_id')->index('failed_import_rows_import_id_foreign');
            $table->text('validation_error')->nullable();
            $table->timestamps();
        });

        Schema::create('failed_jobs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('uuid')->unique();
            $table->text('connection');
            $table->text('queue');
            $table->longText('payload');
            $table->longText('exception');
            $table->timestamp('failed_at')->useCurrent();
        });

        Schema::create('imports', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamp('completed_at')->nullable();
            $table->string('file_name');
            $table->string('file_path');
            $table->string('importer');
            $table->unsignedInteger('processed_rows')->default(0);
            $table->unsignedInteger('total_rows');
            $table->unsignedInteger('successful_rows')->default(0);
            $table->unsignedBigInteger('user_id')->index('imports_user_id_foreign');
            $table->timestamps();
        });

        Schema::create('job_batches', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->string('name');
            $table->integer('total_jobs');
            $table->integer('pending_jobs');
            $table->integer('failed_jobs');
            $table->longText('failed_job_ids');
            $table->mediumText('options')->nullable();
            $table->integer('cancelled_at')->nullable();
            $table->integer('created_at');
            $table->integer('finished_at')->nullable();
        });

        Schema::create('jobs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('queue')->index();
            $table->longText('payload');
            $table->unsignedTinyInteger('attempts');
            $table->unsignedInteger('reserved_at')->nullable();
            $table->unsignedInteger('available_at');
            $table->unsignedInteger('created_at');
        });

        Schema::create('khachhang', function (Blueprint $table) {
            $table->integer('id', true)->unique('makh');
            $table->string('TenKH', 50);
            $table->string('Sdt', 50)->nullable();
            $table->string('Email', 50)->nullable();
            $table->string('DiaChi', 100)->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::create('kho', function (Blueprint $table) {
            $table->integer('id', true)->unique('makho');
            $table->string('TenKho', 50)->nullable();
            $table->string('DiaChi', 100)->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::create('model_has_permissions', function (Blueprint $table) {
            $table->unsignedBigInteger('permission_id');
            $table->string('model_type');
            $table->unsignedBigInteger('model_id');

            $table->index(['model_id', 'model_type']);
            $table->primary(['permission_id', 'model_id', 'model_type']);
        });

        Schema::create('model_has_roles', function (Blueprint $table) {
            $table->unsignedBigInteger('role_id');
            $table->string('model_type');
            $table->unsignedBigInteger('model_id');

            $table->index(['model_id', 'model_type']);
            $table->primary(['role_id', 'model_id', 'model_type']);
        });

        Schema::create('nhacungcap', function (Blueprint $table) {
            $table->integer('id', true)->unique('mancc');
            $table->string('TenNCC', 50);
            $table->string('Sdt', 50)->nullable();
            $table->string('Email', 50)->nullable();
            $table->string('DiaChi', 100);
            $table->string('MaSoThue', 50)->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->timestamps();

            $table->primary(['id']);
        });

        Schema::create('notifications', function (Blueprint $table) {
            $table->char('id', 36)->primary();
            $table->string('type');
            $table->string('notifiable_type');
            $table->unsignedBigInteger('notifiable_id');
            $table->text('data');
            $table->timestamp('read_at')->nullable();
            $table->timestamps();

            $table->index(['notifiable_type', 'notifiable_id']);
        });

        Schema::create('password_reset_tokens', function (Blueprint $table) {
            $table->string('email')->primary();
            $table->string('token');
            $table->timestamp('created_at')->nullable();
        });

        Schema::create('permissions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('guard_name');
            $table->timestamps();

            $table->unique(['name', 'guard_name']);
        });

        Schema::create('phieudieuchuyen', function (Blueprint $table) {
            $table->string('id', 100)->unique('mapck');
            $table->dateTime('NgayLap')->nullable();
            $table->integer('user_id')->nullable();
            $table->integer('MaKhoNguon')->nullable();
            $table->integer('MaKhoDich')->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->tinyInteger('TrangThai')->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::create('phieunhap', function (Blueprint $table) {
            $table->string('id', 100)->unique('mapn');
            $table->dateTime('NgayNhap')->nullable();
            $table->integer('user_id')->nullable();
            $table->integer('nhacungcap_id')->nullable();
            $table->boolean('LyDo')->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->tinyInteger('TrangThai')->nullable()->default(0);
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();
            $table->integer('kho_id')->nullable();

            $table->primary(['id']);
        });

        Schema::create('phieusuco', function (Blueprint $table) {
            $table->string('id', 100)->unique('mapsc');
            $table->integer('phieuxuat_id')->nullable();
            $table->integer('phieuvanchuyen_id')->nullable();
            $table->dateTime('NgayTao')->nullable();
            $table->integer('user_id')->nullable();
            $table->string('Mota', 50)->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->tinyInteger('TrangThai')->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::create('phieuvanchuyen', function (Blueprint $table) {
            $table->string('id', 100)->unique('mapvc');
            $table->integer('phieuxuat_id')->nullable();
            $table->integer('xetai_id')->nullable();
            $table->integer('taixe_id')->nullable();
            $table->integer('user_id')->nullable();
            $table->dateTime('NgayTao')->nullable();
            $table->dateTime('NgayVanChuyen')->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->tinyInteger('TrangThai')->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::create('phieuxuat', function (Blueprint $table) {
            $table->string('id', 100)->unique('mapx');
            $table->dateTime('NgayXuat')->nullable();
            $table->integer('kho_id')->nullable();
            $table->integer('user_id')->nullable();
            $table->boolean('LyDo')->nullable();
            $table->integer('khachhang_id')->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->tinyInteger('TrangThai')->nullable()->default(0);
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::create('role_has_permissions', function (Blueprint $table) {
            $table->unsignedBigInteger('permission_id');
            $table->unsignedBigInteger('role_id')->index('role_has_permissions_role_id_foreign');

            $table->primary(['permission_id', 'role_id']);
        });

        Schema::create('roles', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('guard_name');
            $table->timestamps();

            $table->unique(['name', 'guard_name']);
        });

        Schema::create('sessions', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->unsignedBigInteger('user_id')->nullable()->index();
            $table->string('ip_address', 45)->nullable();
            $table->text('user_agent')->nullable();
            $table->longText('payload');
            $table->integer('last_activity')->index();
        });

        Schema::create('taixe', function (Blueprint $table) {
            $table->integer('id', true)->unique('mataixe');
            $table->string('TenTaiXe', 50)->nullable();
            $table->string('Sdt', 50)->nullable();
            $table->string('CCCD', 50)->nullable();
            $table->string('BangLai', 50)->nullable();
            $table->string('DiaChi', 100)->nullable();
            $table->date('NamSinh')->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->tinyInteger('TrangThai')->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::create('tonkho', function (Blueprint $table) {
            $table->integer('kho_id');
            $table->integer('vattu_id');
            $table->decimal('SoLuong', 10)->nullable();
            $table->integer('vitri_id')->nullable();
            $table->dateTime('NgayCapNhat')->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();
            $table->integer('id', true);
        });

        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->timestamps();
            $table->tinyInteger('Active')->nullable()->default(1);
            $table->date('Birth')->nullable();
            $table->string('Phone', 50)->nullable();
            $table->string('Address', 100)->nullable();
            $table->timestamp('last_renew_password_at')->nullable();
            $table->boolean('force_renew_password')->default(false);
        });

        Schema::create('vattu', function (Blueprint $table) {
            $table->integer('id', true)->unique('mavt');
            $table->string('TenVT', 50)->nullable();
            $table->boolean('LaTP')->nullable();
            $table->integer('donvitinh_id')->nullable();
            $table->string('KichThuoc', 50)->nullable();
            $table->string('MauSac', 50)->nullable();
            $table->string('DacDiem', 50)->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::create('vitri', function (Blueprint $table) {
            $table->integer('id', true)->unique('mavitri');
            $table->integer('kho_id')->nullable();
            $table->string('Mota', 50)->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::create('xetai', function (Blueprint $table) {
            $table->integer('id', true)->unique('maxe');
            $table->string('BienSo', 50)->nullable();
            $table->string('TenXe', 50)->nullable();
            $table->string('HangXe', 50)->nullable();
            $table->string('TaiTrong', 50)->nullable();
            $table->string('MauSac', 50)->nullable();
            $table->string('GhiChu', 50)->nullable();
            $table->tinyInteger('TrangThai')->nullable();
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();

            $table->primary(['id']);
        });

        Schema::table('exports', function (Blueprint $table) {
            $table->foreign(['user_id'])->references(['id'])->on('users')->onUpdate('no action')->onDelete('cascade');
        });

        Schema::table('failed_import_rows', function (Blueprint $table) {
            $table->foreign(['import_id'])->references(['id'])->on('imports')->onUpdate('no action')->onDelete('cascade');
        });

        Schema::table('imports', function (Blueprint $table) {
            $table->foreign(['user_id'])->references(['id'])->on('users')->onUpdate('no action')->onDelete('cascade');
        });

        Schema::table('model_has_permissions', function (Blueprint $table) {
            $table->foreign(['permission_id'])->references(['id'])->on('permissions')->onUpdate('no action')->onDelete('cascade');
        });

        Schema::table('model_has_roles', function (Blueprint $table) {
            $table->foreign(['role_id'])->references(['id'])->on('roles')->onUpdate('no action')->onDelete('cascade');
        });

        Schema::table('role_has_permissions', function (Blueprint $table) {
            $table->foreign(['permission_id'])->references(['id'])->on('permissions')->onUpdate('no action')->onDelete('cascade');
            $table->foreign(['role_id'])->references(['id'])->on('roles')->onUpdate('no action')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('role_has_permissions', function (Blueprint $table) {
            $table->dropForeign('role_has_permissions_permission_id_foreign');
            $table->dropForeign('role_has_permissions_role_id_foreign');
        });

        Schema::table('model_has_roles', function (Blueprint $table) {
            $table->dropForeign('model_has_roles_role_id_foreign');
        });

        Schema::table('model_has_permissions', function (Blueprint $table) {
            $table->dropForeign('model_has_permissions_permission_id_foreign');
        });

        Schema::table('imports', function (Blueprint $table) {
            $table->dropForeign('imports_user_id_foreign');
        });

        Schema::table('failed_import_rows', function (Blueprint $table) {
            $table->dropForeign('failed_import_rows_import_id_foreign');
        });

        Schema::table('exports', function (Blueprint $table) {
            $table->dropForeign('exports_user_id_foreign');
        });

        Schema::dropIfExists('xetai');

        Schema::dropIfExists('vitri');

        Schema::dropIfExists('vattu');

        Schema::dropIfExists('users');

        Schema::dropIfExists('tonkho');

        Schema::dropIfExists('taixe');

        Schema::dropIfExists('sessions');

        Schema::dropIfExists('roles');

        Schema::dropIfExists('role_has_permissions');

        Schema::dropIfExists('phieuxuat');

        Schema::dropIfExists('phieuvanchuyen');

        Schema::dropIfExists('phieusuco');

        Schema::dropIfExists('phieunhap');

        Schema::dropIfExists('phieudieuchuyen');

        Schema::dropIfExists('permissions');

        Schema::dropIfExists('password_reset_tokens');

        Schema::dropIfExists('notifications');

        Schema::dropIfExists('nhacungcap');

        Schema::dropIfExists('model_has_roles');

        Schema::dropIfExists('model_has_permissions');

        Schema::dropIfExists('kho');

        Schema::dropIfExists('khachhang');

        Schema::dropIfExists('jobs');

        Schema::dropIfExists('job_batches');

        Schema::dropIfExists('imports');

        Schema::dropIfExists('failed_jobs');

        Schema::dropIfExists('failed_import_rows');

        Schema::dropIfExists('exports');

        Schema::dropIfExists('dummy');

        Schema::dropIfExists('donvitinh');

        Schema::dropIfExists('chitietphieuxuat');

        Schema::dropIfExists('chitietphieunhap');

        Schema::dropIfExists('chitietphieudieuchuyen');

        Schema::dropIfExists('cache_locks');

        Schema::dropIfExists('cache');
    }
};
