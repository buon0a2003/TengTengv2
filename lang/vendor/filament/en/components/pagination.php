<?php

return [

    'label' => 'Điều hướng phân trang',

    'overview' => '{1} Hiển thị 1 kết quả|[2,*] Hiển thị :first đến :last của :total kết quả',

    'fields' => [

        'records_per_page' => [

            'label' => 'Mỗi trang',

            'options' => [
                'all' => 'Tất cả',
            ],

        ],

    ],

    'actions' => [

        'first' => [
            'label' => 'Trang đầu',
        ],

        'go_to_page' => [
            'label' => 'Đến trang :page',
        ],

        'last' => [
            'label' => 'Trang cuối',
        ],

        'next' => [
            'label' => 'Trang tiếp',
        ],

        'previous' => [
            'label' => 'Trang trước',
        ],

    ],

];
