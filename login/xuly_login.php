<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>? nhập</title>
</head>
<body>
<?php
    
    require_once("../db/dbconnect.php");
	if (isset($_POST["btn_submits"])) {
		$username = $_POST["username"];
		$password = ($_POST["password"]);
		
		if ($username == "" || $password =="") {
			echo "username hoặc password bạn không được để trống!";
		}else{
			$sql = "select * from khachhang where kh_hoten = '$username' and kh_matkhau = '$password' ";
            $result=$conn->query($sql);

            $num_rows=$result->num_rows;
			if ($num_rows > 0) {
				while ($row=$result->fetch_assoc()) {
					if($row['phan_quyen'] == 1){
					$_SESSION['admin'] = $username;
				}
	                header('Location:');
				}
				if($row['phan_quyen'] == 0){
					$_SESSION['username'] = $username; 
				}
                else {
                    header('Location: login.php');
                }
			}
		}
	}
?>
</body>
</html>	