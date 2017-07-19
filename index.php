<?php 
error_reporting(E_ALL);
ini_set('display_errors', 1);
include 'worker.php';
$id = "4"; // jihantoro
$status = db("SELECT * FROM main_posts WHERE wdyw='2' ORDER BY id DESC;");
$status->execute(); // run for once
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>FB Like</title>
	<link rel="stylesheet" href="/style.css">
</head>
<body>
	<div class="container">
	<?php foreach($status->fetchAll() as $status){ ?>
	<?php 
	$fid = $status["identity"];
	$isfriend = db("SELECT * FROM main_posts WHERE wdyw='3' AND identity='$id' AND identity1='$fid' OR identity='$fid' AND identity1='$id' LIMIT 1");
	$isfriend->execute();
	$data = $isfriend->fetch();
	 ?>
	<?php if($data['id']){ ?>
		<div class="item">
			<b class="name"><?php echo $status["id"]; ?></b>
			<?php $cuitan = json_decode($status["content"], TRUE);
			 ?>
			<p><?php echo $cuitan["content"]; ?></p>
			<br> <i>Sambil berasa <?php echo $cuitan["feel"]; ?></i>
		</div>
	<?php } ?>
	<?php } ?>
	</div>
</body>
</html>