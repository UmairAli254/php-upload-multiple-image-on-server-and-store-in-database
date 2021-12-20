<?php

	$con = mysqli_connect("localhost", "root", "", "students_DB");

	$query = "select * from data_with_image";
	$data = mysqli_query($con, $query);

echo "<table>";
echo "<tr>";
	echo "<th> ID </th>";
	echo "<th> Name </th>";
	echo "<th> Degree </th>";
	echo "<th> Image </th>";
echo "</tr>";

	while($res = mysqli_fetch_assoc($data)){
		echo "<tr>";

		echo "<td> {$res['id']} </td>";
		echo "<td> {$res['name']} </td>";
		echo "<td> {$res['degree']} </td>";
		echo "<td> {$res['image']} </td>";

		echo "</tr>";
	}
echo "</table>";

	myqli_close($con);