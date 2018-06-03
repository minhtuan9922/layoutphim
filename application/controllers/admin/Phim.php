<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Phim extends CI_Controller {

	public function __construct() {
		parent::__construct();
		if(!isset($_SESSION['admin_id']))
		{
			redirect(base_url('admin/login'));
		}
		$this->load->model('mphim');
	}
	
	public function index()
	{
		$data['title'] = 'Trang quản phim | phimmt';
		$data['danhsach'] = $this->mphim->danhsach(2,10);
		$data['content'] = 'admin/phim/danhsach';
		$this->load->view('admin/layout', $data);
	}
	public function themphim()
	{
		$data['title'] = 'Thêm phim mới';
		$data['content'] = 'admin/phim/them';
		if(isset($_POST['themphim']))
		{
			$theloai = $this->input->post('theloai');
			
			print_r($theloai);
		}
		else {
		$this->load->view('admin/layout', $data); }
	}
	public function xulyfile_xml()
	{
//		if(isset($_POST))
//		{
//			$path = "upload/";
//			$movie = $_FILES['file_xml']['name'];
//			$movie_tmp = $_FILES['file_xml']['tmp_name'];
//			move_uploaded_file($movie_tmp,$path.$movie);
			$xml = simplexml_load_file(base_url('upload/movie.xml'));//.$movie)) or die("Error: Cannot create object");
			$tenphim_en = $xml->LocalTitle;
			$nam_sanxuat = $xml->ProductionYear;
			$diem_imdb = $xml->IMDBrating;
			$thoiluong = $xml->RunningTime;
			$daodien = $xml->Director;
			$kichban = $xml->LocalTitle;
			$tieude = $xml->LocalTitle;
			$theloai = $xml->Genres;
//			$data = array(
//				'tenphim_em' => $tenphim_en,
//			);
//			echo json_encode($data);

			$dulieu = '{
				"tenphim_en":"'.$tenphim_en.'",
				"nam_sanxuat":"'.$nam_sanxuat.'",
				"diem_imdb":"'.$diem_imdb.'",
				"thoiluong":"'.$thoiluong.'",
				"daodien":"'.$daodien.'",
				"kichban":"'.$kichban.'"
				';
			$i = 1;
			foreach($theloai->Genre as $val)
			{
				$dulieu .= ',"theloai"'.$i.':"'.$val.'"';
				$i++;
			}
			$dulieu .= '}';
			echo $dulieu;
//		}
	}
}
