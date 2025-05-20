<?php

return [
    /*
    |--------------------------------------------------------------------------
    | Table Columns
    |--------------------------------------------------------------------------
    */

    'column.name' => 'Tên',
    'column.guard_name' => 'Tên guard',
    'column.roles' => 'Vai trò',
    'column.permissions' => 'Quyền',
    'column.updated_at' => 'Cập nhật lúc',

    /*
    |--------------------------------------------------------------------------
    | Form Fields
    |--------------------------------------------------------------------------
    */

    'field.name' => 'Tên',
    'field.guard_name' => 'Tên guard',
    'field.permissions' => 'Quyền',
    'field.select_all.name' => 'Chọn tất cả',
    'field.select_all.message' => 'Bật tất cả Quyền hiện tại <span class="text-primary font-medium">Đã bật</span> cho vai trò này',

    /*
    |--------------------------------------------------------------------------
    | Navigation & Resource
    |--------------------------------------------------------------------------
    */

    'nav.group' => 'Filament Shield',
    'nav.role.label' => 'Vai trò',
    'nav.role.icon' => 'heroicon-o-shield-check',
    'resource.label.role' => 'Vai trò',
    'resource.label.roles' => 'Vai trò',

    /*
    |--------------------------------------------------------------------------
    | Section & Tabs
    |--------------------------------------------------------------------------
    */

    'section' => 'Thực thể',
    'resources' => 'Tài nguyên',
    'widgets' => 'Widget',
    'pages' => 'Trang',
    'custom' => 'Quyền tùy chỉnh',

    /*
    |--------------------------------------------------------------------------
    | Messages
    |--------------------------------------------------------------------------
    */

    'forbidden' => 'Bạn không có quyền để truy cập.',

    /*
    |--------------------------------------------------------------------------
    | Resource Permissions' Labels
    |--------------------------------------------------------------------------
    */

    'resource_permission_prefixes_labels' => [
        'view' => 'Xem bản ghi',
        'view_any' => 'Xem danh sách',
        'create' => 'Tạo',
        'update' => 'Sửa',
        'delete' => 'Xoá',
        'delete_any' => 'Xoá hàng loạt',
        'force_delete' => 'Force Delete',
        'force_delete_any' => 'Force Delete Any',
        'restore' => 'Restore',
        'reorder' => 'Reorder',
        'restore_any' => 'Restore Any',
        'replicate' => 'Replicate',
        'duyetphieunhap' => 'Duyệt phiếu nhập',
        'duyetphieuxuat' => 'Duyệt phiếu xuất',
        'duyetphieudieuchuyen' => 'Duyệt phiếu điều chuyển',
    ],
];
