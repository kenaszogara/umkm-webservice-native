<?php

    require_once(__DIR__.'/../../../db_connect.php');
 
	if($_SERVER['REQUEST_METHOD']=='POST'){

        $id = $_POST['id'];

		$name = $_POST['name'];
		$phone_number = $_POST['phone_number'];
		$email = $_POST['email'];
		$gender = $_POST['gender'];
        $address = $_POST['address'];
		$birth_date = $_POST['birth_date'];
		$profile = $_POST['profile'];
		
		$query = $conn->prepare("UPDATE m_customer SET name = ?, phone_number = ?, email = ?, address = ?, gender = ?, birth_date = ?, profile = ? WHERE id = ?");
		$query->bind_param("sssssssi", $name, $phone_number, $email, $gender, $address, $birth_date, $profile, $id);
		
		// Eksekusi Query database
		if($query->execute()){

            $query = $conn->prepare("SELECT * FROM m_customer WHERE id = ?");
            $query->bind_param("i", $id);

            $query->execute();

            $result = $query->get_result()->fetch_assoc();

            $result == null ? $msg = 'Tidak dapat menemukan data dengan id: ' . $id : $msg = 'Berhasil update customer';

			$res = array([
                'result' => $result,
				'message' => $msg,
				'code' => $result == null ? 204 : 201,
            ]);
            
            header('Content-Type: application/json');
			echo json_encode($res);

		}else{
			$res = array([
				'message' => 'Gagal update customer',
				'code' => 400,
            ]);

            header('Content-Type: application/json');
			echo json_encode($res);
		}

		$query->close();
    }

    mysqli_close($conn);

?>
