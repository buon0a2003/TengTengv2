<?php

return [

    'title' => 'Đặt lại mật khẩu',

    'heading' => 'Đặt lại mật khẩu',

    'form' => [

        'email' => [
            'label' => 'Email',
        ],

        'password' => [
            'label' => 'Mật khẩu',
            'validation_attribute' => 'password',
        ],

        'password_confirmation' => [
            'label' => 'Xác nhận mật khẩu',
        ],

        'actions' => [

            'reset' => [
                'label' => 'Đặt lại mật khẩu',
            ],

        ],

    ],

    'notifications' => [

        'throttled' => [
            'title' => 'Quá nhiều lần đặt lại',
            'body' => 'Vui lòng thử lại sau :seconds giây.',
        ],

    ],

];
