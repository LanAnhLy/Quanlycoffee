<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!------ Include the above in your HEAD tag ---------->
    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="signup.css" type="text/css">


    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <title>Laravel</title>

    <style>
        .lb_span{
            color: red;
        }
    </style>
</head>

<body>
    <?php
        //Mở kết nối
        include_once __DIR__ .'/db/dbconnect.php';
        $kh_id = $_GET['kh_id'];
        //chuẩn bị câu lệnh lấy dữ liệu cũ
        $sql = "SELECT * FROM khachhang WHERE kh_id = $kh_id ";
        // thực thi câu lệnh
        $result = mysqli_query($conn, $sql);
        $datadongmuonsua = mysqli_fetch_array($result, MYSQLI_ASSOC);
        //cau lệnh truy vấn các thuộc tính select option

        //truy vấn database province
        include_once __DIR__ .'/db/dbconnect.php';

        $sql = "SELECT * FROM province";
        $result = mysqli_query($conn,$sql);
        $data = [];
        while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
            $data[]= array(
                'idprovince' => $row['id'],
                'nameprovince' => $row['_name_province']
            );
        }  
        

    ?>
    

    <main class="my-form">
        <div class="cotainer">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header" style="text-align: center; font-size: 2rem">SỬA THÔNG TIN THÀNH VIÊN </div>
                        <div class="card-body">
                            <form name="form-edit" onsubmit="return validform()" action="" method="POST">
                                <div class="form-group row">
                                    
                                    <div class="col-md-6">
                                        <label for="full_name" >HỌ VÀ TÊN <span class="lb_span">(*)</span></label> <br>
                                        <input type="text" id="full_name" class="form-control" name="full-name" value="<?=$datadongmuonsua['kh_hoten'] ?>">
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <label for="birthday" >NGÀY SINH <span class="lb_span">(*)</span></label> <br>
                                        <input type="date" id="birthday" class="form-control" name="birthday" >
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    
                                    <div class="col-md-6">
                                        <label for="address" >ĐỊA CHỈ <span class="lb_span">(*)</span></label> <br>
                                        <input type="text" id="address" class="form-control" name="address" value="<?=$datadongmuonsua['kh_diachi'] ?>">
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <label for="email_address" >ĐỊA CHỈ EMAIL <span class="lb_span">(*)</span></label> <br>
                                        <input type="text" id="email_address" class="form-control" name="email_address" value="<?=$datadongmuonsua['kh_email'] ?>">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    
                                    <div class="col-md-6">
                                        <label for="sex" >GIỚI TÍNH <span class="lb_span">(*)</span></label> <br>
                                        <select name="sex" id="sex" class="form-control">
                                            <option value="Nữ">Nữ</option>
                                            <option value="Nam">Nam</option>
                                            <option value="Khác">Khác</option>
                                        </select>
                                    </div>
                                      <div class="col-md-6">
                                        <label for="id_number" >MÃ SỐ THẺ <span class="lb_span">(*)</span></label> <br>
                                        <input type="text" id="id_number" class="form-control" name="id_number" value="<?=$datadongmuonsua['id_number'] ?>">
                                    </div>
                                    
                                </div> 

                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="province">TỈNH/THÀNH PHỐ</label>
                                            <select class="form-control" id="province" name="province">
                                                <option>Chọn Tỉnh/Thành phố</option>
                                                <?php foreach ($data as $province) : ?>
                                            
                                                    <option value="<?= $province['idprovince'] ?>" <?php echo ($province['idprovince'] == $datadongmuonsua['kh_province'] ? 'selected' : '') ?>><?= $province['nameprovince'] ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="district">QUẬN HUYỆN</label>
                                            <select class="form-control" id="district" name="district">
                                                <option>Chưa chọn Tỉnh/Thành phố</option>
                                                
                                            </select>
                                        </div>
                                    </div>
                            
                                </div>
                                <script>
                                    jQuery(document).ready(function($){
                                        $("#province").change(function(event){
                                            provinceID = $("#province").val();
                                            $.post('./login/district.php',{
                                                "provinceid" : provinceID
                                            }, function(data){
                                                $("#district").html(data);
                                            })
                                        })
                                    
                                    })
                                </script>

                                <div class="form-group row">
                                    
                                    <div class="col-md-6">
                                        <label for="password" >MẬT KHẨU <span class="lb_span">(*)</span></label> <br>
                                        <input type="text" id="password" class="form-control" name="password" value="<?=$datadongmuonsua['kh_matkhau'] ?>">
                                    </div>
                                    
                                    

                                </div>

                                <div class="form-group row">
                                    
                                    <div class="col-md-6">
                                        <label for="phone" >SỐ ĐIỆN THOẠI <span class="lb_span">(*)</span></label> <br>
                                        <input type="text" id="phone" class="form-control" name="phone" value="<?=$datadongmuonsua['kh_dienthoai'] ?>">
                                    </div>
                                    
                                </div>

                                <div class="col-md-6 offset-md-4">
                                    <button class="btn btn-primary" name="btnSave" id="btnSave">
                                        Lưu dữ liệu
                                    </button>
                                </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </div>
        
        <?php
            if(isset($_POST['btnSave'])){
                //Xử lý dữ liệu update
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
                echo $address;
                // câu lệnh update
                $sql = " UPDATE khachhang SET kh_gioitinh='$gioitinh', id_number='$cmt', kh_diachi='$address', kh_dienthoai='$phone', kh_email='$email', kh_ngaysinh='$date', kh_hoten='$ho_ten', kh_matkhau='$pass', kh_district='$district', kh_province='$city' WHERE kh_id = $kh_id";
                // thực thi 
                mysqli_query($conn,$sql);
                //Điều hướng trang danh sách
                echo '<script>location.href = "admin.php"</script>';
            }

        ?>
    </main>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


    <script>
    function validform() {

        var a = document.forms["my-form"]["full-name"].value;
        var b = document.forms["my-form"]["email-address"].value;
        var c = document.forms["my-form"]["username"].value;
        var d = document.forms["my-form"]["permanent-address"].value;
        var e = document.forms["my-form"]["nid-number"].value;

        if (a == null || a == "") {
            alert("Please Enter Your Full Name");
            return false;
        } else if (b == null || b == "") {
            alert("Please Enter Your Email Address");
            return false;
        } else if (c == null || c == "") {
            alert("Please Enter Your Username");
            return false;
        } else if (d == null || d == "") {
            alert("Please Enter Your Permanent Address");
            return false;
        } else if (e == null || e == "") {
            alert("Please Enter Your NID Number");
            return false;
        }

    }
    </script>
</body>

</html>