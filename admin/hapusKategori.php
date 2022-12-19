<?php 
    require "../dbconnect.php";

    $id = $_GET['id'];
    $query = "DELETE FROM kategori where idkategori = $id";
    $result = mysqli_query($conn, $query);

    if($result){
        echo "<script>alert('Kategori Berhasil Dihapus');
        document.location.href = 'kategori.php'</script>";
    }else{
        echo mysqli_error($conn);
    }
?>