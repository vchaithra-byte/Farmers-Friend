<?php session_start();?>


<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Farmer's Friend</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<style>
		.error{
			background-color:#e1d89f
		}
		</style>
		
	</head>
	
	

    <body>
        

        <section id="banner" class="wrapper">
            <div class="error">
                <header class="major">
                    <h2>ERROR</h2>
                </header>
                <p>
                    <?php
                        $page = $_SERVER['HTTP_REFERER'];
                        if(isset($_SESSION['message']) AND !empty($_SESSION['message']))
                        {
                            echo $_SESSION['message'];
                        }
                        else
                        {
                            header("Location: ../index.php");
                        }
                    ?>
                </p><br />
                <a href ="<?= $page ?>" class="button special">Retry</a>


    	<?php $_SESSION['message'] = ""; ?>

    </body>
</html>
