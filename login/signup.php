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

    <nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="../images/logo_montea.PNG" alt="logo">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="login.php">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Register</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>

    <main class="my-form">
        <div class="cotainer">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">ĐĂNG KÝ THÀNH VIÊN </div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="success.php" method="POST">
                                <div class="form-group row">
                                    
                                    <div class="col-md-6">
                                        <label for="full_name" >HỌ VÀ TÊN <span class="lb_span">(*)</span></label> <br>
                                        <input type="text" id="full_name" class="form-control" name="full-name">
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <label for="birthday" >NGÀY SINH <span class="lb_span">(*)</span></label> <br>
                                        <input type="date" id="birthday" class="form-control" name="birthday">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    
                                    <div class="col-md-6">
                                        <label for="address" >ĐỊA CHỈ <span class="lb_span">(*)</span></label> <br>
                                        <input type="text" id="address" class="form-control" name="address">
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <label for="email_address" >ĐỊA CHỈ EMAIL <span class="lb_span">(*)</span></label> <br>
                                        <input type="text" id="email_address" class="form-control" name="email_address">
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
                                        <input type="text" id="id_number" class="form-control" name="id_number">
                                    </div>
                                    
                                </div> 
                                <?php
                                    //truy vấn dữ liệu tỉnh thành
                                    include_once __DIR__ .'../../login/province.php';
                                ?>
                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="province">TỈNH/THÀNH PHỐ</label>
                                            <select class="form-control" id="province" name="province">
                                                <option>Chọn Tỉnh/Thành phố</option>
                                                <?php foreach ($data as $province) : ?>
                                                    <option value="<?= $province['idprovince'] ?>"><?= $province['nameprovince'] ?></option>
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
                                            $.post('district.php',{
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
                                        <input type="password" id="password" class="form-control" name="password">
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <label for="repassword" >NHẬP LẠI MẬT KHẨU <span class="lb_span">(*)</span></label> <br>
                                        <input type="password" id="repassword" class="form-control" name="repassword">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    
                                    <div class="col-md-6">
                                        <label for="phone" >SỐ ĐIỆN THOẠI <span class="lb_span">(*)</span></label> <br>
                                        <input type="text" id="phone" class="form-control" name="phone">
                                    </div>
                                    
                                </div>

                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-primary" name="register">
                                        Register
                                    </button>
                                </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </div>

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