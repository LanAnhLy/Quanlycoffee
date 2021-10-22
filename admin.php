<?php
    // kết nối database
    include_once (__DIR__ .'/db/dbconnect.php');
    // chuẩn bị câu truy vấn sql
    $sql = "SELECT kh.kh_id, kh.kh_hoten, kh.id_number,kh.kh_ngaysinh, kh.kh_gioitinh, kh.kh_diachi, kh.kh_dienthoai, kh.kh_email,
    kh.kh_matkhau, pe._name_province, dis._name_district
    FROM khachhang kh
    JOIN province pe ON kh.kh_province = pe.id
    JOIN district dis ON kh.kh_district = dis.id ";
    // thực thi câu lệnh
    $result = mysqli_query($conn,$sql);
    // phân tích khối dữ liệu bằng mảng array php
    if ($result) {

        $danhsachkhachhang = [];
        while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            $danhsachkhachhang[] = [
                'kh_id' => $row['kh_id'],
                'kh_hoten' => $row['kh_hoten'],
                'id_number' => $row['id_number'],
                'kh_ngaysinh' => $row['kh_ngaysinh'],
                'kh_gioitinh' => $row['kh_gioitinh'],
                'kh_diachi' => $row['kh_diachi'],
                'kh_dienthoai' => $row['kh_dienthoai'],
                'kh_email' => $row['kh_email'],
                'kh_matkhau' => $row['kh_matkhau'],
                '_name_province' => $row['_name_province'],
                '_name_district' => $row['_name_district'],
        
            ];
        
        }
    } else {
        // Code xử lý lỗi
        echo "Xảy ra lỗi khi truy vấn dữ liệu";
    };
 

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</head>
<body>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Mã ID</th>
                <th>Họ tên</th>
                <th>Chứng minh thư</th>
                <th>Ngày sinh</th>
                <th>Giới tính</th>
                <th>Địa chỉ</th>
                <th>Điện thoại</th>
                <th>Email</th>
                <th>Mật khẩu</th>
                <th>Quận</th>
                <th>Huyện</th>
                <th>Sửa</th>
                <th>Xóa</th>
            </tr>

            <tbody>
                <?php foreach($danhsachkhachhang as $kh): ?>
                <tr>
                    <td><?= $kh['kh_id']; ?></td>
                    <td><?= $kh['kh_hoten']; ?></td>
                    <td><?= $kh['id_number']; ?></td>
                    <td><?= $kh['kh_ngaysinh']; ?></td>
                    <td><?= $kh['kh_gioitinh']; ?></td>
                    <td><?= $kh['kh_diachi']; ?></td>
                    <td><?= $kh['kh_dienthoai']; ?></td>
                    <td><?= $kh['kh_email']; ?></td>
                    <td><?= $kh['kh_matkhau']; ?></td>
                    <td><?= $kh['_name_province']; ?></td>
                    <td><?= $kh['_name_district']; ?></td>
                    <td>
                        <a href="sua.php?kh_id=<?= $kh['kh_id'] ?>" class="btn btn-success">Sửa</a>
                    </td>
                    <td>
                        <button type="button" class="btn btn-danger btn-delete" data-kh-id="<?= $kh['kh_id'] ?>">Xóa</a>
                    </td>

                </tr>
                <?php endforeach; ?>
            </tbody>
        </thead>
    </table>

    <script src="/Quanlycoffee-main/vendor/sweetalerts/sweetalert2.all.min.js"></script>
    <script>
        $(document).ready(function() {
            //Tìm đối tượng nào đó -> yêu cầu đối tượng làm gì đó
            //$(selector).action();
            $('.btn-delete').on('click', function() {
                 var kh_id = $(this).attr('data-kh-id');




                Swal.fire({
                title: 'Xác nhận xóa?',
                text: "Bạn có chắc chắn muốn xóa không?",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Vâng, chắc chắn!'
                }).then((result) => {
                if (result.isConfirmed) {
                    // khi người dùng đã xác nhận xóa
                    // tự điều hướng đến trang xóa xoa.php

                    location.href = "xoa.php?kh_id=" + kh_id;
                }
                })

                
            });
        });
    </script>
</body>
</html>

