<?php

    require_once(__DIR__.'/../../../db_connect.php');
 
	if($_SERVER['REQUEST_METHOD']=='DELETE'){

		$id = $_GET['id'];
		
		$query = $conn->prepare("DELETE FROM m_products WHERE product_id=?");
		$query->bind_param("i", $id);
		
		//Eksekusi Query database
		if($query->execute()){
			$res = array([
				'message' => 'Berhasil menghapus product dengant id: ' . $id,
				'code' => 201,
            ]);

            header('Content-Type: application/json');
			echo json_encode($res);

		}else{
			$res = array([
				'message' => 'Bad Request',
				'code' => 400,
            ]);
            
            header('Content-Type: application/json');
			echo json_encode($res);
        }
        
        $query->close();
    }

    mysqli_close($conn);

?>
