<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Xem phim </title>
	<link rel="icon" href="img/icon.png">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="fontawesome-free-5.0.6/web-fonts-with-css/css/fontawesome-all.css">
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/xPYwwjdL.js"></script>
	<script type="text/javascript" src="js/custom.js"></script>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand logo" href="#"><img src="img/icon.png"></a>
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
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2 bg-secondary text-light input-dark" type="search" placeholder="Tìm kiếm" aria-label="Search">
					<button class="btn btn-secondary my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
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
						<p class="text-light text-left">Bạn chưa có tài khoản? <a href="#" data-toggle="modal" data-target="#dangky" data-dismiss="modal">Đăng ký</a></p>
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
						<p class="text-light text-left">Bạn đã có tài khoản? <a href="#" data-toggle="modal" data-target="#dangnhap" data-dismiss="modal">Đăng nhập</a></p>
						<button type="submit" class="btn btn-success">Đăng ký</button>
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="space20"></div>
	<div class="wrapper bg-toi">
		<div class="container">
			<div class="embed-responsive embed-responsive-16by9">
				<iframe class="embed-responsive-item" src="https://drive.google.com/file/d/1vvFwg_m1IsgltCkAVRaGxgck_R_GEChE/preview" allowfullscreen></iframe>
			</div>
			<div class="space20"></div>
			<div class="row">
				<div class="col-md-12">
					<h4 class="text-sang text-title">Thông tin phim</h4>
				
				</div>
				<div class="col-md-12">
					<p class="text-sang text-title">Phim cùng thể loại</p>
					<div class="row">
						<div class="col-lg-2 col-md-3 col-sm-4 col-6">
							<div class="phim">
								<div class="poster">
									<a href="#dd"><img src="img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
								</div>
								<div class="tieude">
									<a href="#">Đặt tiêu đề phim tại đây.</a>
								</div>
							</div>
						</div>
						<div class="col-lg-2 col-md-3 col-sm-4 col-6">
							<div class="phim">
								<div class="poster">
									<a href="#dd"><img src="img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
								</div>
								<div class="tieude">
									<a href="#">Đặt tiêu đề phim tại đây.</a>
								</div>
							</div>
						</div>
						<div class="col-lg-2 col-md-3 col-sm-4 col-6">
							<div class="phim">
								<div class="poster">
									<a href="#dd"><img src="img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
								</div>
								<div class="tieude">
									<a href="#">Đặt tiêu đề phim tại đây.</a>
								</div>
							</div>
						</div>
						<div class="col-lg-2 col-md-3 col-sm-4 col-6">
							<div class="phim">
								<div class="poster">
									<a href="#dd"><img src="img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
								</div>
								<div class="tieude">
									<a href="#">Đặt tiêu đề phim tại đây.</a>
								</div>
							</div>
						</div>
						<div class="col-lg-2 col-md-3 col-sm-4 col-6">
							<div class="phim">
								<div class="poster">
									<a href="#dd"><img src="img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
								</div>
								<div class="tieude">
									<a href="#">Đặt tiêu đề phim tại đây.</a>
								</div>
							</div>
						</div>
						<div class="col-lg-2 col-md-3 col-sm-4 col-6">
							<div class="phim">
								<div class="poster">
									<a href="#dd"><img src="img/poster/Aftermath.2017.jpg" width="100%" alt="" class="poster-img"></a>
								</div>
								<div class="tieude">
									<a href="#">Đặt tiêu đề phim tại đây.</a>
								</div>
							</div>
						</div>
						
					</div>
				</div>
				<div class="col-md-12">
					<div class="fb-comments" data-href="http://localhost/layoutphim/xemphim" data-numposts="5" width="100%" data-colorscheme="dark"></div>
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