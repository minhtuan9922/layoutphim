<div class="wrapper">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?=base_url('admin') ?>">Trang chủ</a></li>
			<li class="breadcrumb-item"><a href="<?=base_url('admin/phim') ?>">Phim</a></li>
			<li class="breadcrumb-item active" aria-current="page"><?=$title ?></li>
		</ol>
	</nav>
	<div class="main">
		<div class="card">
			<div class="card-header bg-info text-white"><?=$title ?></div>
			<div class="card-body">
				<form action="<?=base_url('admin/phim/themphim') ?>" method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="col-lg-6">
							<div class="form-group">
								<label for="tenphim_vn">Tựa Tiếng Việt</label>
								<input type="text" class="form-control" id="tenphim_vn" name="tenphim_vn" >
							</div>
						</div>
						<div class="col-lg-6">
							<div class="form-group">
								<label for="tenphim_en">Tựa Tiếng Anh</label>
								<input type="text" class="form-control" id="tenphim_en" name="tenphim_en">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<div class="form-group">
								<label for="daodien">Đạo diễn</label>
								<input type="text" class="form-control" id="daodien" name="daodien">
							</div>
						</div>
						<div class="col-lg-6">
							<div class="form-group">
								<label for="kichban">Kịch bản</label>
								<input type="text" class="form-control" id="kichban" name="kichban">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="dienvien">Diễn viên</label>
						<input type="text" class="form-control" id="dienvien" name="dienvien">
					</div>
					<div class="form-group">
						<label for="theloai">Thể loại</label>
						<select multiple name="theloai[]">
							<option value="1">Volvo</option>
							<option value="2">Saab</option>
							<option value="3">Opel</option>
							<option value="4">Audi</option>
						</select>
<!--						<input type="" class="form-control" id="theloai" name="theloai">-->
					</div>
					<div class="row">
						<div class="col-lg-4">
							<div class="form-group">
								<label for="nam_sanxuat">Năm sản xuất</label>
								<input type="number" class="form-control" id="nam_sanxuat" name="nam_sanxuat">
							</div>
						</div>
						<div class="col-lg-4">
							<div class="form-group">
								<label for="thoiluong">Thời lượng</label>
								<input type="text" class="form-control" id="thoiluong" name="thoiluong">
							</div>
						</div>
						<div class="col-lg-4">
							<div class="form-group">
								<label for="diem_imdb">Điểm IMDB</label>
								<input type="text" class="form-control" id="diem_imdb" name="diem_imdb">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="link_phude">Link phụ đề</label>
						<input type="text" class="form-control" id="link_phude" name="link_phude">
					</div>
					<div class="form-group">
						<label for="link_thuyetminh">Link thuyết minh</label>
						<input type="text" class="form-control" id="link_thuyetminh" name="link_thuyetminh">
					</div>
					<div class="form-group">
						<label for="gioithieu">Giới thiệu</label>
						<textarea type="text" class="form-control" id="gioithieu" name="gioithieu"></textarea>
					</div>
					<div class="form-group">
						<label for="trailer">Trailer</label>
						<input type="text" class="form-control" id="trailer" name="trailer">
					</div>
					<div class="form-group">
						<label for="poster">Poster</label>
						<input type="text" class="form-control" id="poster" name="poster">
					</div>
					<div class="form-check">
						<label class="form-check-label">
					  		<input class="form-check-input" type="checkbox" name="phimbo" value="1"> Phim bộ
						</label>
					</div>
					<button type="submit" name="themphim" class="btn btn-primary">Thêm phim</button>
					<button class="btn btn-info" data-toggle="modal" data-target="#myModal" id="docfile_xml">Đọc file XML</button>
				</form>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="myModal">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Đọc file XML</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label for="file_xml">File XML</label>
					<input type="file" class="form-control" id="file_xml" name="file_xml">
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onClick="docfile_xml()">Đọc file</button>
				<button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$('#docfile_xml').click(function(e) {
			e.preventDefault();
		});
	});
	function docfile_xml() {
		var file_xml = $('#file_xml').prop('files')[0];
		var form_data = new FormData();
        form_data.append("file_xml", file_xml);
		$.ajax({
			typeData: "JSON",
			url: "<?=base_url('admin/phim/xulyfile_xml') ?>",
			method: "POST",
			data: form_data,
			cache: false,
			processData: false,
			contentType: false, 
		}).done(function(ketqua) {
			var dulieu = JSON.parse(ketqua);
			console.log(dulieu);
			console.log(dulieu.tenphim_en);
		});
	}
	function chonhinh() 
	{}
	$('#hinh_anh').change(function () {
        if ( window.FileReader ) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#images').attr('src', e.target.result);
            }
            reader.readAsDataURL(this.files[0]);
        }
    })
</script>