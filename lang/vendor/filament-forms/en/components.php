<?php

return [

    'builder' => [

        'actions' => [

            'clone' => [
                'label' => 'Nhân bản',
            ],

            'add' => [

                'label' => 'Thêm vào :label',

                'modal' => [

                    'heading' => 'Thêm vào :label',

                    'actions' => [

                        'add' => [
                            'label' => 'Thêm',
                        ],

                    ],

                ],

            ],

            'add_between' => [

                'label' => 'Chèn giữa các khối',

                'modal' => [

                    'heading' => 'Thêm vào :label',

                    'actions' => [

                        'add' => [
                            'label' => 'Thêm',
                        ],

                    ],

                ],

            ],

            'delete' => [
                'label' => 'Xóa',
            ],

            'edit' => [

                'label' => 'Sửa',

                'modal' => [

                    'heading' => 'Sửa khối',

                    'actions' => [

                        'save' => [
                            'label' => 'Lưu thay đổi',
                        ],

                    ],

                ],

            ],

            'reorder' => [
                'label' => 'Di chuyển',
            ],

            'move_down' => [
                'label' => 'Di chuyển xuống',
            ],

            'move_up' => [
                'label' => 'Di chuyển lên',
            ],

            'collapse' => [
                'label' => 'Thu gọn',
            ],

            'expand' => [
                'label' => 'Mở rộng',
            ],

            'collapse_all' => [
                'label' => 'Thu gọn tất cả',
            ],

            'expand_all' => [
                'label' => 'Mở rộng tất cả',
            ],

        ],

    ],

    'checkbox_list' => [

        'actions' => [

            'deselect_all' => [
                'label' => 'Bỏ chọn tất cả',
            ],

            'select_all' => [
                'label' => 'Chọn tất cả',
            ],

        ],

    ],

    'file_upload' => [

        'editor' => [

            'actions' => [

                'cancel' => [
                    'label' => 'Hủy',
                ],

                'drag_crop' => [
                    'label' => 'Chế độ kéo "cắt"',
                ],

                'drag_move' => [
                    'label' => 'Chế độ kéo "di chuyển"',
                ],

                'flip_horizontal' => [
                    'label' => 'Lật ảnh theo chiều ngang',
                ],

                'flip_vertical' => [
                    'label' => 'Lật ảnh theo chiều dọc',
                ],

                'move_down' => [
                    'label' => 'Di chuyển ảnh xuống',
                ],

                'move_left' => [
                    'label' => 'Di chuyển ảnh sang trái',
                ],

                'move_right' => [
                    'label' => 'Di chuyển ảnh sang phải',
                ],

                'move_up' => [
                    'label' => 'Di chuyển ảnh lên',
                ],

                'reset' => [
                    'label' => 'Đặt lại',
                ],

                'rotate_left' => [
                    'label' => 'Xoay ảnh sang trái',
                ],

                'rotate_right' => [
                    'label' => 'Xoay ảnh sang phải',
                ],

                'set_aspect_ratio' => [
                    'label' => 'Đặt tỷ lệ khung hình thành :ratio',
                ],

                'save' => [
                    'label' => 'Lưu',
                ],

                'zoom_100' => [
                    'label' => 'Phóng to ảnh lên 100%',
                ],

                'zoom_in' => [
                    'label' => 'Phóng to',
                ],

                'zoom_out' => [
                    'label' => 'Thu nhỏ',
                ],

            ],

            'fields' => [

                'height' => [
                    'label' => 'Cao',
                    'unit' => 'px',
                ],

                'rotation' => [
                    'label' => 'Xoay',
                    'unit' => 'độ',
                ],

                'width' => [
                    'label' => 'Rộng',
                    'unit' => 'px',
                ],

                'x_position' => [
                    'label' => 'X',
                    'unit' => 'px',
                ],

                'y_position' => [
                    'label' => 'Y',
                    'unit' => 'px',
                ],

            ],

            'aspect_ratios' => [

                'label' => 'Tỷ lệ khung hình',

                'no_fixed' => [
                    'label' => 'Tự do',
                ],

            ],

            'svg' => [

                'messages' => [
                    'confirmation' => 'Chỉnh sửa tệp SVG không được khuyến nghị vì có thể dẫn đến mất chất lượng khi thay đổi kích thước.\n Bạn có chắc chắn muốn tiếp tục?',
                    'disabled' => 'Chỉnh sửa tệp SVG bị vô hiệu hóa vì có thể dẫn đến mất chất lượng khi thay đổi kích thước.',
                ],

            ],

        ],

    ],

    'key_value' => [

        'actions' => [

            'add' => [
                'label' => 'Thêm hàng',
            ],

            'delete' => [
                'label' => 'Xóa hàng',
            ],

            'reorder' => [
                'label' => 'Sắp xếp lại hàng',
            ],

        ],

        'fields' => [

            'key' => [
                'label' => 'Khóa',
            ],

            'value' => [
                'label' => 'Giá trị',
            ],

        ],

    ],

    'markdown_editor' => [

        'toolbar_buttons' => [
            'attach_files' => 'Đính kèm tệp',
            'blockquote' => 'Trích dẫn',
            'bold' => 'Đậm',
            'bullet_list' => 'Danh sách không thứ tự',
            'code_block' => 'Khối mã',
            'heading' => 'Tiêu đề',
            'italic' => 'Nghiêng',
            'link' => 'Liên kết',
            'ordered_list' => 'Danh sách có thứ tự',
            'redo' => 'Làm lại',
            'strike' => 'Gạch ngang',
            'table' => 'Bảng',
            'undo' => 'Hoàn tác',
        ],

    ],

    'radio' => [

        'boolean' => [
            'true' => 'Có',
            'false' => 'Không',
        ],

    ],

    'repeater' => [

        'actions' => [

            'add' => [
                'label' => 'Thêm vào :label',
            ],

            'add_between' => [
                'label' => 'Chèn ở giữa',
            ],

            'delete' => [
                'label' => 'Xóa',
            ],

            'clone' => [
                'label' => 'Nhân bản',
            ],

            'reorder' => [
                'label' => 'Di chuyển',
            ],

            'move_down' => [
                'label' => 'Di chuyển xuống',
            ],

            'move_up' => [
                'label' => 'Di chuyển lên',
            ],

            'collapse' => [
                'label' => 'Thu gọn',
            ],

            'expand' => [
                'label' => 'Mở rộng',
            ],

            'collapse_all' => [
                'label' => 'Thu gọn tất cả',
            ],

            'expand_all' => [
                'label' => 'Mở rộng tất cả',
            ],

        ],

    ],

    'rich_editor' => [

        'dialogs' => [

            'link' => [

                'actions' => [
                    'link' => 'Liên kết',
                    'unlink' => 'Bỏ liên kết',
                ],

                'label' => 'URL',

                'placeholder' => 'Nhập URL',

            ],

        ],

        'toolbar_buttons' => [
            'attach_files' => 'Đính kèm tệp',
            'blockquote' => 'Trích dẫn',
            'bold' => 'Đậm',
            'bullet_list' => 'Danh sách không thứ tự',
            'code_block' => 'Khối mã',
            'h1' => 'Tiêu đề',
            'h2' => 'Đề mục',
            'h3' => 'Tiểu đề',
            'italic' => 'Nghiêng',
            'link' => 'Liên kết',
            'ordered_list' => 'Danh sách có thứ tự',
            'redo' => 'Làm lại',
            'strike' => 'Gạch ngang',
            'underline' => 'Gạch dưới',
            'undo' => 'Hoàn tác',
        ],

    ],

    'select' => [

        'actions' => [

            'create_option' => [

                'label' => 'Tạo mới',

                'modal' => [

                    'heading' => 'Tạo mới',

                    'actions' => [

                        'create' => [
                            'label' => 'Tạo mới',
                        ],

                        'create_another' => [
                            'label' => 'Tạo tiếp',
                        ],

                    ],

                ],

            ],

            'edit_option' => [

                'label' => 'Sửa',

                'modal' => [

                    'heading' => 'Sửa',

                    'actions' => [

                        'save' => [
                            'label' => 'Lưu thay đổi',
                        ],

                    ],

                ],

            ],

        ],

        'boolean' => [
            'true' => 'Có',
            'false' => 'Không',
        ],

        'loading_message' => 'Đang tải...',

        'max_items_message' => 'Chỉ được chọn :count mục.',

        'no_search_results_message' => 'Không tìm thấy kết quả phù hợp.',

        'placeholder' => 'Chọn',

        'searching_message' => 'Đang tìm kiếm...',

        'search_prompt' => 'Nhập tên muốn tìm kiếm...',

    ],

    'tags_input' => [
        'placeholder' => 'Thẻ mới',
    ],

    'text_input' => [

        'actions' => [

            'hide_password' => [
                'label' => 'Ẩn mật khẩu',
            ],

            'show_password' => [
                'label' => 'Hiện mật khẩu',
            ],

        ],

    ],

    'toggle_buttons' => [

        'boolean' => [
            'true' => 'Có',
            'false' => 'Không',
        ],

    ],

    'wizard' => [

        'actions' => [

            'previous_step' => [
                'label' => 'Quay lại',
            ],

            'next_step' => [
                'label' => 'Tiếp theo',
            ],

        ],

    ],

];
