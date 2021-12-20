<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Upload Files</title>
</head>
<body>

	<form method="POST" action="savedata.php" enctype="multipart/form-data">
		<input type="text" name="name" placeholder="Your Name">
		<input type="text" name="degree" placeholder="Your Degree">
		<input type="file" name="image">
		<input type="submit">
	</form>
	
	<a href="show data.php" target="_blank">
	<button name="showData" value="Show Data">Check Data</button>
	</a>

</body>
</html>