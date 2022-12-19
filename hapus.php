<?php 
    require "../dbconnect.php";

    $id = $_GET['id'];
    $query = "DELETE FROM produk where idproduk = $id";
    $result = mysqli_query($conn, $query);

    if($result){
        echo "<script>alert('Data Berhasil Dihapus');
        document.location.href = 'produk.php'</script>";
    }else{
        echo mysqli_error($conn);
    }
?>