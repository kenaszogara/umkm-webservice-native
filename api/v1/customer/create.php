<?php

    define('__ROOT__', dirname(dirname(__FILE__)));
    require_once(__ROOT__.'db_connect.php');
 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$name = $_POST['name'];
		$phone_number = $_POST['phone_number'];
        $email = $_POST['email'];
        $address = $_POST['address'];
        $gender = $_POST['gender'];
        $birth_date = $_POST['birth_date'];
		
		$query = $conn->prepare("INSERT INTO m_customer (name, phone_number, email, address, gender, birth_date) VALUES (?,?,?,?,?,?)");
		
		//Import File Koneksi database
		require_once('koneksi.php');
		
		//Eksekusi Query database
		if(mysqli_query($con,$sql)){
			echo 'Berhasil Menambahkan Pegawai';
		}else{
			echo 'Gagal Menambahkan Pegawai';
		}
    }

    mysqli_close($con);

?>
