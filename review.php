<?php
	session_start();
	require 'db.php';
	$pid = $_GET['pid'];
?>


<!DOCTYPE html>
<html>
<head>
	<title>Farmer's Friend: Product</title>
	<meta lang="eng">
	<meta charset="UTF-8">
		<title>Farmer's Friend</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href="bootstrap\css\bootstrap.min.css" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="bootstrap\js\bootstrap.min.js"></script>
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<link rel="stylesheet" href="Blog/commentBox.css" />
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
		</noscript>
</head>
<body>


				<?php
					require 'menu.php';
					
					$sql="SELECT * FROM fproduct WHERE pid = '$pid'";
					$result = mysqli_query($conn, $sql);
					$pic = mysqli_fetch_assoc($result);

					$sql="SELECT * FROM details WHERE pid = '$pid'";
					$result = mysqli_query($conn, $sql);
					$row = mysqli_fetch_assoc($result);
					
					

	

					$picDestination = "images/productImages/".$pic['pimage'];

					?>
				<section id="main" class="wrapper style1 align-center">
						<div class="container">
							<div class="row">
								<div class="col-sm-4">
									<img class="image fit" src="<?php echo $picDestination.'';?>" alt="" />
								</div><!-- Image of farmer-->
								<div class="col-12 col-sm-6">
									<p style="font: 50px Times new roman;"><?= $row['product']; ?></p>
									<table class="table table-sm table-dark">
									  <thead>
										<tr  class="table-active">
										  <th scope="col">Sl.no</th>
										  <th scope="col" style="position=center">Basic Details</th>
										  
										</tr>
									  </thead>
									  <tbody>
										<tr class="table-active">
										  <th scope="row">1</th>
										  <td colspan="2">Fruit</td>
										  <td><?= $row['product']; ?></td>
										</tr>
										<tr class="table-active">
										  <th scope="row">2</th>
										  <td colspan="2">Scientific Name:</td>
										  <td><?= $row['SciName']; ?></td>
										</tr>
										<tr class="table-active">
										  <th scope="row">3</th>
										  <td colspan="2">Condition</td>
										  <td><?= $row['cliTemp']; ?></td>
										</tr>
										<tr class="table-active">
										  <th scope="row">4</th>
										  <td colspan="2">Soil pH</td>
										  <td><?= $row['soil']; ?></td>
										</tr>
										<tr  class="table-active">
										  <th scope="row">5</th>
										  <td colspan="2">Breeds</td>
										  <td><?= $row['varieties']; ?></td>
										</tr>
									  </tbody>
									</table>
						
										<h3><a href="<?= $row['product'];?>.php">More about <?= $row['product']; ?> </a></h3>
										 
								</div>
							</div><br />
							
						</div>

						<br /><br />
						
	
		
		
		
				


	</body>
</html>
