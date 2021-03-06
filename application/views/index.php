<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php if(isset($title)) echo $title; else echo 'phimmt'; ?></title>
	<link rel="icon" href="<?=base_url() ?>img/icon.png">
	<link rel="stylesheet" href="<?=base_url() ?>css/bootstrap.css">
	<link rel="stylesheet" href="<?=base_url() ?>css/style.css">
	<link rel="stylesheet" href="<?=base_url() ?>fontawesome-free-5.0.6/web-fonts-with-css/css/fontawesome-all.css">
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
	<script type="text/javascript" src="<?=base_url() ?>js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="<?=base_url() ?>js/popper.min.js"></script>
	<script type="text/javascript" src="<?=base_url() ?>js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<?=base_url() ?>js/scrollreveal.min.js"></script>
	<script type="text/javascript" src="<?=base_url() ?>js/custom.js"></script>
	<script type="text/javascript" src="https://www.youtube.com/iframe_api"></script>
</head>

<body>
	<?php
	$this->load->view('home/header');
	if(isset($slide)) {
		$this->load->view($slide);
	}
	$this->load->view($content);
	$this->load->view('home/footer');
	?>

</body>

</html>