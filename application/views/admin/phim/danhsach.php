<div class="wrapper">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?=base_url('admin') ?>">Trang chủ</a></li>
			<li class="breadcrumb-item active" aria-current="page">Phim</li>
		</ol>
	</nav>
	<div class="main">
		<div class="card">
			<div class="card-header bg-info text-white">Header</div>
			<div class="card-body p-0">
				<div class="table-responsive-md">
					<table class="table table-hover table-bordered m-0">
						<thead>
							<tr>
								<th>Tên phim Tiếng Việt</th>
								<th>Tên phim Tiếng Anh</th>
								<th>Đạo diễn</th>
								<th>Kịch bản</th>
								<th>Diễn viên</th>
								<th>Thể loại</th>
								<th>Poster</th>
								<th>Active</th>
								<th>Hành động</th>
							</tr>
						</thead>
						<tbody>
							<?php
							if(isset($danhsach)) 
							{
								foreach($danhsach as $tmp)
								{
							?>
							<tr>
								<td><?=$tmp['tenphim_vn'] ?></td>
								<td><?=$tmp['tenphim_en'] ?></td>
								<td><?=$tmp['daodien'] ?></td>
								<td><?=$tmp['kichban'] ?></td>
								<td><?=$tmp['dienvien'] ?></td>
								<td><?=$tmp['theloai'] ?></td>
								<td><img src="<?=base_url('img/poster/'.$tmp['poster']) ?>" width="64px"></td>
								<td><input type="checkbox" value="1" <?php if($tmp['active'] == 1) echo 'checked'; ?>></td>
								<td>
									<a href="<?=base_url('admin/phim/chinhsua/'.$tmp['id_phim']) ?>" class="btn btn-info"><i class="fas fa-edit"></i></a>
									<button class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>
								</td>
							</tr>
							<?php
								}
							}
							?>
						</tbody>
					</table>
				</div> 
			</div>
			<div class="card-footer">
			sldfl
			</div>
		</div>
	</div>
</div>