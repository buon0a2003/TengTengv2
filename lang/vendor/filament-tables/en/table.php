<?php

return [

    'column_toggle' => [

        'heading' => 'Cột',

    ],

    'columns' => [

        'actions' => [
            'label' => 'Hành động|Hành động',
        ],

        'text' => [

            'actions' => [
                'collapse_list' => 'Hiển thị :count ít hơn',
                'expand_list' => 'Hiển thị :count nhiều hơn',
            ],

            'more_list_items' => 'và :count nhiều hơn',

        ],

    ],

    'fields' => [

        'bulk_select_page' => [
            'label' => 'Chọn/bỏ chọn tất cả các mục cho hành động lô',
        ],

        'bulk_select_record' => [
            'label' => 'Chọn/bỏ chọn mục :key cho hành động lô',
        ],

        'bulk_select_group' => [
            'label' => 'Chọn/bỏ chọn nhóm :title cho hành động lô',
        ],

        'search' => [
            'label' => 'Tìm kiếm',
            'placeholder' => 'Tìm kiếm',
            'indicator' => 'Tìm kiếm',
        ],

    ],

    'summary' => [

        'heading' => 'Tóm tắt',

        'subheadings' => [
            'all' => 'Tất cả :label',
            'group' => ':group tóm tắt',
            'page' => 'Trang này',
        ],

        'summarizers' => [

            'average' => [
                'label' => 'Trung bình',
            ],

            'count' => [
                'label' => 'Đếm',
            ],

            'sum' => [
                'label' => 'Tổng',
            ],

        ],

    ],

    'actions' => [

        'disable_reordering' => [
            'label' => 'Hoàn tất sắp xếp bản ghi',
        ],

        'enable_reordering' => [
            'label' => 'Sắp xếp lại bản ghi',
        ],

        'filter' => [
            'label' => 'Lọc',
        ],

        'group' => [
            'label' => 'Nhóm',
        ],

        'open_bulk_actions' => [
            'label' => 'Hành động lô',
        ],

        'toggle_columns' => [
            'label' => 'Chuyển đổi cột',
        ],

    ],

    'empty' => [

        'heading' => 'No :model',

        'description' => 'Tạo :model để bắt đầu.',

    ],

    'filters' => [

        'actions' => [

            'apply' => [
                'label' => 'Áp dụng bộ lọc',
            ],

            'remove' => [
                'label' => 'Xóa bộ lọc',
            ],

            'remove_all' => [
                'label' => 'Xóa tất cả bộ lọc',
                'tooltip' => 'Xóa tất cả bộ lọc',
            ],

            'reset' => [
                'label' => 'Đặt lại',
            ],

        ],

        'heading' => 'Bộ lọc',

        'indicator' => 'Bộ lọc đang hoạt động',

        'multi_select' => [
            'placeholder' => 'Tất cả',
        ],

        'select' => [
            'placeholder' => 'Tất cả',
        ],

        'trashed' => [

            'label' => 'Bản ghi đã xóa',

            'only_trashed' => 'Chỉ bản ghi đã xóa',

            'with_trashed' => 'Bao gồm bản ghi đã xóa',

            'without_trashed' => 'Không bao gồm bản ghi đã xóa',

        ],

    ],

    'grouping' => [

        'fields' => [

            'group' => [
                'label' => 'Nhóm theo',
                'placeholder' => 'Nhóm theo',
            ],

            'direction' => [

                'label' => 'Hướng nhóm',

                'options' => [
                    'asc' => 'Tăng dần',
                    'desc' => 'Giảm dần',
                ],

            ],

        ],

    ],

    'reorder_indicator' => 'Kéo và thả các bản ghi để sắp xếp.',

    'selection_indicator' => [

        'selected_count' => '1 bản ghi đã chọn|:count bản ghi đã chọn',

        'actions' => [

            'select_all' => [
                'label' => 'Chọn tất cả :count',
            ],

            'deselect_all' => [
                'label' => 'Bỏ chọn tất cả',
            ],

        ],

    ],

    'sorting' => [

        'fields' => [

            'column' => [
                'label' => 'Sắp xếp theo',
            ],

            'direction' => [

                'label' => 'Hướng sắp xếp',

                'options' => [
                    'asc' => 'Tăng dần',
                    'desc' => 'Giảm dần',
                ],

            ],

        ],

    ],

];
