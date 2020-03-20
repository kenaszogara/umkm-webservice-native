<?php

    require_once(__DIR__.'/../../../db_connect.php');
 
	if($_SERVER['REQUEST_METHOD']=='POST'){

        $id = $_POST['id'];

		$name = $_POST['name'];
		$price = $_POST['price'];
		$size = $_POST['size'];
		$image = $_POST['image'];
        $description = $_POST['description'];
		$jumlah = $_POST['jumlah'];
        $merchant_id = $_POST['merchant_id'];
        $user_id = $_POST['user_id'];
        $category_id = $_POST['category_id'];
		
        $query = $conn->prepare("UPDATE m_products 
            SET name = ?, price = ?, size = ?, image = ?, description = ?, jumlah = ?, merchant_id = ?, user_id = ?, category_id = ?
            WHERE product_id = ?");
        
		$query->bind_param("siisssssss", $name, $price, $size, $image, $description, $jumlah, $merchant_id, $user_id, $category_id, $id);
		
		// Eksekusi Query database
		if ($query->execute()){

            $query = $conn->prepare("SELECT * FROM m_products WHERE product_id = ?");
            $query->bind_param("i", $id);

            $query->execute();
            
            $result = $query->get_result()->fetch_assoc();

            $result == null ? $msg = 'Tidak dapat menemukan data dengan product_id: ' . $id : $msg = 'Berhasil update product';

			$res = array([
                'result' => $result,
				'message' => $msg,
				'code' => $result == null ? 204 : 201,
            ]);
            
            header('Content-Type: application/json');
			echo json_encode($res);

		} else {
			$res = array([
				'message' => 'Gagal update product',
				'code' => 400,
            ]);

            header('Content-Type: application/json');
			echo json_encode($res);
		}

		$query->close();
    }

    mysqli_close($conn);

?>
