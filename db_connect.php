<?php

 // db credentials
 define('HOST','localhost');
 define('USER','root');
 define('PASS','');
 define('DB','umkm');
 
 //connect database
 $conn = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect');

 ?>
