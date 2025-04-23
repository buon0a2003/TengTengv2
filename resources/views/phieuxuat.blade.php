<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>Phiếu Xuất Kho</title>
    <style>
        body {
            font-family: DejaVu Sans, sans-serif;
            font-size: 12px;
        }

        .brand {
            text-align: start;
            font-size: 10px;
            margin-bottom: 10px;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .info,
        .products {
            width: 100%;
            margin-bottom: 20px;
        }

        .products table {
            width: 100%;
            border-collapse: collapse;
        }

        .products th,
        .products td {
            border: 1px solid #000;
            padding: 8px;
            text-align: center;
        }

        .footer {
            margin-top: 10px;
            text-align: center
        }

        .footer div {
            display: inline-flex;
            justify-content:space-between;
            width: 23%;
        }

        .text-end {
            text-align: right;
            margin-top: 20px;
        }
    </style>
</head>

<body>

   <div class="brand">
        <h4><strong>Công ty TNHH TM Đại Phát</strong></h4>
        <h4><strong>Số 114 Hoà Khê, P.Quán Trữ, Q.Kiến An, TP.Hải Phòng</strong></h4>
   </div>

    <div class="header">
        <h2>PHIẾU XUẤT KHO</h2>
        <p>Mã phiếu: {{ $record['id'] }}</p>
    </div>

    <div class="info">
        <p><strong>Tên khách hàng:</strong> {{ $record['khachhang'] }}</p>
        <p><strong>Địa chỉ:</strong> {{ $record['diachi'] }}</p>
        <p><strong>Người tạo phiếu:</strong> {{ $record['username'] }}</p>
        <p><strong>Ngày xuất:</strong> {{ \Carbon\Carbon::parse($record['ngayxuat'])->format('d/m/Y') }}</p>
        <p><strong>Kho:</strong> {{ $record['kho'] }}</p>
        <p><strong>Lý do:</strong> {{ $record['lydo'] }}</p>
    </div>

    <div class="products">
        <table>
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên vật tư</th>
                    <th>Đơn vị tính</th>
                    <th>Mã số</th>
                    <th>Số lượng</th>
                </tr>
            </thead>
            <tbody>
                @php
                $tongsoluong = 0;
                @endphp
                @foreach($chitietphieuxuat as $index => $item)
                @php
                $tongsoluong += $item['SoLuong'];
                @endphp
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $item['TenVT'] }}</td>
                    <td>{{ $item['TenDVT'] }}</td>
                    <td>{{ $item['MaSo'] }}</td>
                    <td>{{ $item['SoLuong'] }}</td>
                </tr>
                @endforeach
                <tr>
                    <td colspan="4"><strong>Tổng cộng</strong></td>
                    <td><strong>{{ $tongsoluong }}</strong></td>
                </tr>
            </tbody>
        </table>
    </div>

    @php
    $ngay = \Carbon\Carbon::now()->format('d');
    $thang = \Carbon\Carbon::now()->format('m');
    $nam = \Carbon\Carbon::now()->format('Y');
    @endphp
    <p class="text-end">Ngày {{ $ngay }} tháng {{ $thang }} năm {{ $nam }}</p>


    <div class="footer">

        <div>
            <p><strong>Người lập phiếu</strong></p>
            <p>(Ký, họ tên)</p>
        </div>
        <div>
            <p><strong>Người nhận hàng</strong></p>
            <p>(Ký, họ tên)</p>
        </div>
        <div>
            <p><strong>Thủ kho</strong></p>
            <p>(Ký, họ tên)</p>
        </div>
        <div>
            <p><strong>Giám đốc</strong></p>
            <p>(Ký, họ tên)</p>
        </div>
    </div>

</body>

</html>