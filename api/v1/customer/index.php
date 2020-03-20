<?php

    require_once(__DIR__.'/../../../db_connect.php');
 
	if($_SERVER['REQUEST_METHOD']=='GET'){

        $limit = isset($_GET['limit']) ? $_GET['limit'] : 25;
		
        $query = $conn->prepare("SELECT * FROM m_customer LIMIT ?");
        $query->bind_param("i", $limit);
		
		// Eksekusi Query database
		if($query->execute()){
            $result = $query->get_result()->fetch_all(MYSQLI_ASSOC);

			$res = array([
				'data' => $result,
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
