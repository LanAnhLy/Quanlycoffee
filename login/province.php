<?php
    include_once __DIR__ .'../../db/dbconnect.php';

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