<?php

    require_once(__DIR__.'/../../../db_connect.php');
 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$name = $_POST['name'];
		$phone_number = $_POST['phone_number'];
		$email = $_POST['email'];
		$gender = $_POST['gender'];
        $address = $_POST['address'];
		$birth_date = $_POST['birth_date'];
		$profile = $_POST['profile'];
		
		$query = $conn->prepare("INSERT INTO m_customer (name, phone_number, email, address, gender, birth_date, profile) VALUES (?,?,?,?,?,?,?)");
		$query->bind_param("sssssss", $name, $phone_number, $email, $gender, $address, $birth_date, $profile);
		
		//Eksekusi Query database
		if($query->execute()){
			header('Content-Type: application/json');
			$res = array([
				'message' => 'Berhasil menambahkan customer',
				'code' => 201,
			]);
			echo json_encode($res);

		}else{
			header('Content-Type: application/json');
			$res = array([
				'message' => 'Gagal menambahkan cusomter',
				'code' => 400,
			]);
			echo json_encode($res);
		}

		$query->close();
    }

    mysqli_close($conn);

?>
