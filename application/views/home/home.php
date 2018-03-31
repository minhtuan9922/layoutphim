<!--Phần đăng phim-->
<div class="bg-toi wrapper">
	<div class="container">
		<h4 class="text-sang text-title" id="phim_moi">Phim mới cập nhật</h4>
		<div class="space25"></div>
		<div class="row">
			<?php
			if(isset($phimmoi) && $phimmoi != '')
			{
				foreach($phimmoi as $tmp)
				{
			?>
			<div class="col-lg-2 col-md-3 col-sm-4 col-6">
				<div class="phim">
					<div class="poster">
						<a href="<?=base_url('xemphim/'.$tmp['id_phim'].'/'.$this->mphim->convert_vi_to_en($tmp['tenphim_vn'])) ?>"><img src="<?=base_url('img/poster/'.$tmp['poster']) ?>" width="100%" alt="" class="poster-img"></a>
					</div>
					<div class="tieude">
						<a href="<?=base_url('xemphim/'.$tmp['id_phim'].'/'.$this->mphim->convert_vi_to_en($tmp['tenphim_vn'])) ?>"><?=$tmp['tenphim_vn'] ?></a>
						<div class="nut-play-trailer">
							<button type="button" class="btn btn-info" data-toggle="modal" data-target="#trailer">Trailer</button>
							<a href="<?=base_url('xemphim/'.$tmp['id_phim'].'/'.$this->mphim->convert_vi_to_en($tmp['tenphim_vn'])) ?>" type="button" class="btn btn-danger">Play</a>
						</div>
					</div>
				</div>
			</div>
			<?php
				}
			}
			?>

		</div>
	</div>
</div>
<!-- The Modal -->
<div class="modal fade" id="trailer">
	<div class="modal-dialog modal-lg modal-dialog-centered">
		<div class="modal-content trailer">
			<div class="embed-responsive embed-responsive-16by9">
				<iframe class="embed-responsive-item"  src="https://www.youtube.com/embed/6ZfuNTqbHE8" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			</div>
		</div>
	</div>
</div>