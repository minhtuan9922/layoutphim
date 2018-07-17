<div class="wrapper bg-toi">
	<div class="container">
		<div class="embed-responsive embed-responsive-16by9" id="khungphim">
			<div class="tab-content" id="pills-tabContent">
				<div class="tab-pane fade show active" id="thuyetminh" role="tabpanel" aria-labelledby="pills-home-tab">
					<iframe src="<?=$phim['link_thuyetminh'] ?>" allowfullscreen frameborder="0"></iframe>
				</div>
				<div class="tab-pane fade <?php if(empty($phim['link_thuetminh'])) echo 'show active'; ?>" id="phude" role="tabpanel" aria-labelledby="pills-profile-tab">
					<iframe src="<?=$phim['link_phude'] ?>" allowfullscreen frameborder="1000"></iframe>
				</div>
			</div>
			<ul class="nav nav-pills mb-3 nav-tab" id="tab-button" role="tablist">
				<?php
				if(!empty($phim['link_thuetminh']))
				{
				?>
				<li class="nav-item">
					<a class="nav-link active" data-toggle="pill" href="#thuyetminh" role="tab" aria-controls="pills-home" aria-selected="true">Thuyết minh</a>
				</li>
				<?php
				}
				if(!empty($phim['link_phude']))
				{
				?>
				<li class="nav-item">
					<a class="nav-link <?php if(empty($phim['link_thuetminh'])) echo 'active'; ?>" data-toggle="pill" href="#phude" role="tab" aria-controls="pills-profile" aria-selected="false">Phụ đề</a>
				</li>
				<?php
				}
				?>
			</ul>
		</div>



		<div class="space20"></div>
		<div class="row">
			<div class="col-md-12">
				<h4 class="text-sang text-title">Thông tin phim</h4>
				<div class="row">
					<div class="col-md-3 text-sang">
						<img class="img-thumbnail" src="<?=base_url('img/poster/'.$phim['poster']) ?>" alt="" width="100%">
						<div class="space20"></div>
					</div>
					<div class="col-md-9 text-sang">
						<p><strong><?=$phim['tenphim_vn'].' - '.$phim['tenphim_en'] ?></strong></p>
						<p>Đạo diễn: <?=$phim['daodien'] ?></p>
						<p>Kịch Bản: <?=$phim['kichban'] ?></p>
						<p>Diễn viên: <?=$phim['dienvien'] ?></p>
						<p>Diểm imdb: <?=$phim['diem_imdb'] ?></p>
						<p>Năm sản xuất: <?=$phim['nam_sanxuat'] ?></p>
						<p>Thể loại: <?=$phim['theloai'] ?></p>
						<p>Thời lượng: <?=date('g', strtotime($phim['thoiluong'])).'h '.date('i', strtotime($phim['thoiluong'])) ?></p>
						<p>Giới thiệu: <?=$phim['gioithieu'] ?></p>
					</div>
				</div>
			</div>
			<div class="space30"></div>
			<div class="col-md-12">
				<h4 class="text-sang text-title">Phim cùng thể loại</h4>
				<div class="row">
					<?php
					if(!empty($phimcungtheloai))
					{
						foreach($phimcungtheloai as $item)
						{
					?>
					<div class="col-lg-2 col-md-4 col-sm-4 col-6">
						<div class="phim">
							<div class="poster">
								<a href="<?=base_url('xemphim/'.$item['id_phim'].'/'.$this->chuanhoa->convert_vi_to_en($item['tenphim_vn'])) ?>"><img src="<?=base_url('img/poster/'.$item['poster']) ?>" width="100%" alt="" class="poster-img"></a>
							</div>
							<div class="tieude">
								<a href="<?=base_url('xemphim/'.$item['id_phim'].'/'.$this->chuanhoa->convert_vi_to_en($item['tenphim_vn'])) ?>"><?=$item['tenphim_vn'] ?></a>
							</div>
						</div>
					</div>
					<?php
						}
					}
					?>
				</div>
			</div>
			<div class="col-md-12">
				<div class="fb-comments" data-href="<?=base_url(uri_string()) ?>" data-numposts="5" width="100%" data-colorscheme="dark"></div>
			</div>
		</div>
	</div>
</div>


