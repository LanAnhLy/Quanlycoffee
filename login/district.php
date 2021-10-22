<option value="">Chọn Quận/Huyện</option>
<?php
    include_once __DIR__ .'../../db/dbconnect.php';

    $sql = "SELECT * FROM district where _province_id = ".$_POST["provinceid"];
    $result = mysqli_query($conn, $sql);
    $data = [];
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
        $data [] = array(
            'namedistrict' => $row['_name_district'],
            'iddistrict' =>$row['id'],
            'prefix' =>$row['_prefix_district']
        );
    }
?>

<?php foreach($data as $district): ?>
<option value="<?= $district['iddistrict'] ?>">
    <?=$district['prefix']."&nbsp".$district ['namedistrict'] ?>
</option>

<?php endforeach;?>