<?php
    // Thu thập dữ liệu người dùng gửi đến
    $kh_id = $_GET['kh_id'];
    // Mở kết nối database
    include_once __DIR__ .'/db/dbconnect.php';
    // chuẩn bị câu lệnh
    $sql ="DELETE FROM khachhang WHERE kh_id = $kh_id";
    // Thực thi câu lệnh
    mysqli_query($conn, $sql);
    // Điều hướng về trang danh sách
    echo '<script>location.href = "admin.php" </script>';
?>