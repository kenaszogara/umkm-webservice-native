<?php

    require_once(__DIR__.'/../../../db_connect.php');
 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$name = $_POST['name'];
		$price = $_POST['price'];
		$size = $_POST['size'];
		$image = $_POST['image'];
        $description = $_POST['description'];
		$jumlah = $_POST['jumlah'];
        $merchant_id = $_POST['merchant_id'];
        $user_id = $_POST['user_id'];
        $category_id = $_POST['category_id'];
		
		$query = $conn->prepare("INSERT INTO m_products (name, price, size, image, description, jumlah, merchant_id, user_id, category_id) VALUES (?,?,?,?,?,?,?,?,?)");
		$query->bind_param("siissssss", $name, $price, $size, $image, $description, $jumlah, $merchant_id, $user_id, $category_id);
		
		//Eksekusi Query database
		if($query->execute()){
			$res = array([
				'message' => 'Berhasil menambahkan product',
				'code' => 201,
            ]);
            
            header('Content-Type: application/json');
			echo json_encode($res);

		}else{
			$res = array([
				'message' => 'Gagal menambahkan product',
				'code' => 400,
            ]);
            
            header('Content-Type: application/json');
			echo json_encode($res);
		}

		$query->close();
    }

    mysqli_close($conn);

?>
