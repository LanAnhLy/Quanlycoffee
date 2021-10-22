<?php
        // Nếu người dùng đã bấm SAVE
        if(isset($_POST['register'])) {
            // Truy vấn database để lấy danh sách
            // 1. Include file cấu hình kết nối đến database, khởi tạo kết nối $conn
            include_once(__DIR__ . '../../db/dbconnect.php');
    
            // 2. Chuẩn bị QUERY
            $ho_ten = $_POST['full-name'];
            $address = $_POST['address'];
            $gioitinh = $_POST['sex'];
            $city = $_POST['province'];
            $phone = $_POST['phone'];
            $pass = ($_POST['password']);
            $date = $_POST['birthday'];
            $email = $_POST['email_address'];
            $district = $_POST['district'];
            $cmt = $_POST['id_number'];


            $sql = "INSERT INTO `khachhang` (kh_gioitinh,id_number, kh_diachi, kh_dienthoai, kh_email, kh_ngaysinh,kh_hoten,kh_matkhau,kh_district,kh_province) VALUES ('$gioitinh','$cmt','$address','$phone','$email','$date','$ho_ten','$pass','$district','$city');";
    
            // 3. Thực thi
            mysqli_query($conn, $sql);
            
        
        }
        header('Location: login.php');
        
?>