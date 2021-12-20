<?php

	$name 	= $_POST["name"];
	$degree = $_POST["degree"];
	$image 	= $_FILES["image"];

	$con = mysqli_connect("localhost", "root", "", "students_DB");
	echo $con?"Connection Succesful <br>":"Connection is not successful to database <br>";




//Image Vlues
	$fileName = $image["name"];
	$filePath = $image["tmp_name"];
	$fileError = $image["error"];

	if($fileError === 0):
		$fileDestination = "upload/" . $fileName;
		move_uploaded_file($filePath, $fileDestination);

		$query = "INSERT INTO data_with_image(name, degree, image) VALUES ('$name', '$degree', '$fileDestination')";
		mysqli_query($con, $query);


	else:
		echo "An Error is occurred " . $fileError;
	endif;
		

mysqli_close($con);