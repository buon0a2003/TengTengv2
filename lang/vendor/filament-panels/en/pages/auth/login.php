<?php

return [

    'title' => 'Đăng nhập',

    'heading' => 'Đăng nhập',

    'actions' => [

        'register' => [
            'before' => 'or',
            'label' => 'sign up for an account',
        ],

        'request_password_reset' => [
            'label' => 'Forgot password?',
        ],

    ],

    'form' => [

        'email' => [
            'label' => 'Địa chỉ email',
        ],

        'password' => [
            'label' => 'Mật khẩu',
        ],

        'remember' => [
            'label' => 'Ghi nhớ đăng nhập',
        ],

        'actions' => [

            'authenticate' => [
                'label' => 'Đăng nhập',
            ],

        ],

    ],

    'messages' => [

        'failed' => 'Thông tin đăng nhập không chính xác.',

    ],

    'notifications' => [

        'throttled' => [
            'title' => 'Quá nhiều lần đăng nhập thất bại',
            'body' => 'Vui lòng thử lại sau :seconds giây.',
        ],

    ],

];
