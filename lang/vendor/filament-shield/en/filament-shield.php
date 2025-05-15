<?php

return [
    /*
    |--------------------------------------------------------------------------
    | Table Columns
    |--------------------------------------------------------------------------
    */

    'column.name' => 'Name',
    'column.guard_name' => 'Guard Name',
    'column.team' => 'Team',
    'column.roles' => 'Chức vụ',
    'column.permissions' => 'Permissions',
    'column.updated_at' => 'Updated At',

    /*
    |--------------------------------------------------------------------------
    | Form Fields
    |--------------------------------------------------------------------------
    */

    'field.name' => 'Tên',
    'field.guard_name' => 'Guard Name',
    'field.permissions' => 'Các quyền',
    'field.team' => 'Team',
    'field.team.placeholder' => 'Select a team ...',
    'field.select_all.name' => 'Chọn tất cả',
    'field.select_all.message' => 'Bật/Tắt tất cả quyền cho chức vụ này',

    /*
    |--------------------------------------------------------------------------
    | Navigation & Resource
    |--------------------------------------------------------------------------
    */

    'nav.group' => 'Quản lý tài khoản',
    'nav.role.label' => 'Roles',
    'nav.role.icon' => 'heroicon-o-shield-check',
    'resource.label.role' => 'Chức vụ',
    'resource.label.roles' => 'Các chức vụ',


    /*
    |--------------------------------------------------------------------------
    | Section & Tabs
    |--------------------------------------------------------------------------
    */

    'section' => 'Entities',
    'resources' => 'Quyền',
    'widgets' => 'Widgets',
    'pages' => 'Pages',
    'custom' => 'Custom Permissions',

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
        'duyetphieudieuchuyen' => 'Duyệt phiếu điều chuyển'
    ],
];
