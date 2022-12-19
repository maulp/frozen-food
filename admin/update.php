<?php 
    require "../dbconnect.php";
    $id = $_GET['id'];
    $stok = $_GET['jumlah'];
    $query = "UPDATE set stok = '$stok' where idproduk = '$id'";
    $result = mysqli_query($conn, $result);
    if($result){
        echo "<script>
            alert('Data berhasil diupdate!');
            </script>";
    }else{
        echo mysqli_error($con);
    }
?>