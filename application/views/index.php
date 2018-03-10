<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Xem phim </title>
	<link rel="icon" href="<?=base_url() ?>img/icon.png">
	<link rel="stylesheet" href="<?=base_url() ?>css/bootstrap.css">
	<link rel="stylesheet" href="<?=base_url() ?>css/style.css">
	<link rel="stylesheet" href="<?=base_url() ?>fontawesome-free-5.0.6/web-fonts-with-css/css/fontawesome-all.css">
	<script type="text/javascript" src="<?=base_url() ?>js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="<?=base_url() ?>js/popper.min.js"></script>
	<script type="text/javascript" src="<?=base_url() ?>js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<?=base_url() ?>js/scrollreveal.min.js"></script>
	<script type="text/javascript" src="<?=base_url() ?>js/custom.js"></script>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand logo" href="#"><img src="<?=base_url() ?>img/icon.png"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav">
					<li class="nav-item active">
						<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Phim bộ</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Thể loại</a>
						<div class="dropdown-menu bg-dark menu-drop" aria-labelledby="navbarDropdown">
							<a class="dropdown-item text-light" href="#">Action</a>
							<a class="dropdown-item text-light" href="#">Another action</a>
						</div>
					</li>
				</ul>
				<form class="form-inline my-2 my-lg-0 form-timkiem">
					<input class="form-control mr-sm-2 bg-secondary text-light input-dark" type="search" placeholder="Tìm kiếm" aria-label="Search" id="timkiem">
					<button class="btn btn-secondary my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
					<div class="ketqua bg-secondary"><a href="#">Kết quả tìm kiếm hiển thị tại đây</a></div>
				</form>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="#" data-toggle="modal" data-target="#dangnhap">Đăng nhập</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#" data-toggle="modal" data-target="#dangky">Đăng ký</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
<!--Model đăng nhập-->
	<div class="modal fade" id="dangnhap">
		<div class="modal-dialog">
			<div class="modal-content bg-dark">
				<form>
					<div class="modal-header border-b-dark">
						<h4 class="modal-title text-light">Đăng nhập</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="email" class="text-light">Email</label>
							<input type="email" id="email" name="email" class="form-control bg-secondary input-dark text-light" placeholder="Nhập email">
						</div>
						<div class="form-group">
							<label for="matkhau" class="text-light">Mật khẩu</label>
							<input type="password" id="matkhau" name="matkhau" class="form-control bg-secondary input-dark text-light" placeholder="Nhập mật khẩu">
						</div>
					</div>
					<div class="modal-footer border-t-dark">
						<p class="text-light text-model-footer">Bạn chưa có tài khoản? <a href="#" data-toggle="modal" data-target="#dangky" data-dismiss="modal">Đăng ký</a></p>
						<button type="submit" class="btn btn-success">Đăng nhập</button>
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<!--Model đăng ký-->
	<div class="modal fade" id="dangky">
		<div class="modal-dialog">
			<div class="modal-content bg-dark">
				<form>
					<div class="modal-header border-b-dark">
						<h4 class="modal-title text-light">Đăng ký</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="email" class="text-light">Email</label>
							<input type="email" id="email" name="email" class="form-control bg-secondary input-dark text-light" placeholder="Nhập email">
						</div>
						<div class="form-group">
							<label for="matkhau" class="text-light">Mật khẩu</label>
							<input type="password" id="matkhau" name="matkhau" class="form-control bg-secondary input-dark text-light" placeholder="Nhập mật khẩu">
						</div>
						<div class="form-group">
							<label for="nhaplai_matkhau" class="text-light">Nhập lại mật khẩu</label>
							<input type="password" id="nhaplai_matkhau" name="nhaplai_matkhau" class="form-control bg-secondary input-dark text-light" placeholder="Nhập lại mật khẩu">
						</div>
						<div class="form-group">
							<label for="ngaysinh" class="text-light">Ngày sinh</label>
							<input type="date" id="ngaysinh" name="ngaysinh" class="form-control bg-secondary input-dark text-light">
						</div>
						<div class="form-group">
							<label for="matkhau" class="text-light">Giới tính</label>
							<select class="form-control bg-secondary input-dark text-light">
								<option>Chọn giới tính</option>
								<option value="1">Nam</option>
								<option value="2">Nữ</option>
							</select>
						</div>
					</div>
					<div class="modal-footer border-t-dark">
						<p class="text-light text-model-footer">Bạn đã có tài khoản? <a href="#" data-toggle="modal" data-target="#dangnhap" data-dismiss="modal">Đăng nhập</a></p>
						<button type="submit" class="btn btn-success">Đăng ký</button>
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<!--Slide đầu trang-->
	<div id="slide" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#slide" data-slide-to="0" class="active">
				<div class="slide-poster">
					<img src="<?=base_url() ?>img/poster/Frozen.2013.jpg" alt="" width="100%">
				</div>
			</li>
			<li data-target="#slide" data-slide-to="1">
				<div class="slide-poster">
					<img src="<?=base_url() ?>img/poster/Frozen.2013.jpg" alt="" width="100%">
				</div>
			</li>
			<li data-target="#slide" data-slide-to="2">
				<div class="slide-poster">
					<img src="<?=base_url() ?>img/poster/Frozen.2013.jpg" alt="" width="100%">
				</div>
			</li>
		</ul>
		<div class="carousel-inner">
			<div class="carousel-item active" style="background-image: url(img/slide/backdrop.jpg)">
				<div class="carousel-caption">
					<h3>Los Angeles</h3>
					<p>We had such a great time in LA!</p>
				</div>   
			</div>
			<div class="carousel-item" style="background-image: url(img/slide/backdrop.jpg)">
				<div class="carousel-caption">
					<h3>Chicago</h3>
					<p>Thank you, Chicago!</p>
				</div>   
			</div>
			<div class="carousel-item" style="background-image: url(img/slide/backdrop.jpg)">
				<div class="carousel-caption">
					<h3>New York</h3>
					<p>We love the Big Apple!</p>
				</div>   
			</div>
		</div>
		<a class="carousel-control-prev" href="#slide" data-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</a>
			<a class="carousel-control-next" href="#slide" data-slide="next">
		<span class="carousel-control-next-icon"></span>
		</a>
	</div>
	
<!--Phần đăng phim-->
	<div class="bg-toi wrapper">
		<div class="container">
			<h4 class="text-sang text-title" id="phim_moi">Phim mới cập nhật</h4>
			<div class="space25"></div>
			<div class="row">
				<div class="col-lg-2 col-md-3 col-sm-4 col-6">
					<div class="phim">
						<div class="poster">
							<a href="#dd"><img src="<?=base_url() ?>img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
						</div>
						<div class="tieude">
							<a href="#">Đặt tiêu đề phim tại đây.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-4 col-6">
					<div class="phim">
						<div class="poster">
							<a href="#dd"><img src="<?=base_url() ?>img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
						</div>
						<div class="tieude">
							<a href="#">Đặt tiêu đề phim tại đây.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-4 col-6">
					<div class="phim">
						<div class="poster">
							<a href="#dd"><img src="<?=base_url() ?>img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
						</div>
						<div class="tieude">
							<a href="#">Đặt tiêu đề phim tại đây.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-4 col-6">
					<div class="phim">
						<div class="poster">
							<a href="#dd"><img src="<?=base_url() ?>img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
						</div>
						<div class="tieude">
							<a href="#">Đặt tiêu đề phim tại đây.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-4 col-6">
					<div class="phim">
						<div class="poster">
							<a href="#dd"><img src="<?=base_url() ?>img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
						</div>
						<div class="tieude">
							<a href="#">Đặt tiêu đề phim tại đây.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-4 col-6">
					<div class="phim">
						<div class="poster">
							<a href="#dd"><img src="<?=base_url() ?>img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
						</div>
						<div class="tieude">
							<a href="#">Đặt tiêu đề phim tại đây.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-4 col-6">
					<div class="phim">
						<div class="poster">
							<a href="#dd"><img src="<?=base_url() ?>img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
						</div>
						<div class="tieude">
							<a href="#">Đặt tiêu đề phim tại đây.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-4 col-6">
					<div class="phim">
						<div class="poster">
							<a href="#dd"><img src="<?=base_url() ?>img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
						</div>
						<div class="tieude">
							<a href="#">Đặt tiêu đề phim tại đây.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-4 col-6">
					<div class="phim">
						<div class="poster">
							<a href="#dd"><img src="<?=base_url() ?>img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
						</div>
						<div class="tieude">
							<a href="#">Đặt tiêu đề phim tại đây.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-4 col-6">
					<div class="phim">
						<div class="poster">
							<a href="#dd"><img src="<?=base_url() ?>img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
						</div>
						<div class="tieude">
							<a href="#">Đặt tiêu đề phim tại đây.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-4 col-6">
					<div class="phim">
						<div class="poster">
							<a href="#dd"><img src="<?=base_url() ?>img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
						</div>
						<div class="tieude">
							<a href="#">Đặt tiêu đề phim tại đây.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-4 col-6">
					<div class="phim">
						<div class="poster">
							<a href="#dd"><img src="<?=base_url() ?>img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
						</div>
						<div class="tieude">
							<a href="#">Đặt tiêu đề phim tại đây.</a>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>

	<footer class="bg-dark">
		<div class="container">
			<div class="footer">
				<div class="row">
					<div class="col-md-6">
						<p class="text-secondary text-md-left text-center"><i class="far fa-copyright"></i> 2018 - <?=date('Y')?>. Designed by Minh Tuấn</p>
					</div>
					<div class="col-md-6">
						<ul class="text-md-right text-center footer-icon">
							<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#"><i class="fab fa-youtube"></i></a></li>
							<li><a href="#"><i class="far fa-envelope"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>

</html>