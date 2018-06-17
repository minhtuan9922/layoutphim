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
		$this->load->model('mdaodien');
		$this->load->model('mkichban');
		$this->load->model('mdienvien');
		$this->load->model('mtheloai');
		$this->load->library('chuanhoa');
		date_default_timezone_set('Asia/Ho_Chi_Minh');
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
			$tenphim_vn = $this->input->post('tenphim_vn');
			$tenphim_en = $this->input->post('tenphim_en');
			$daodien = $this->input->post('daodien');
			$kichban = explode(',',$this->input->post('kichban')); 
			$dienvien = explode(',',$this->input->post('dienvien'));
			$nam_sanxuat = $this->input->post('nam_sanxuat');
			$theloai = explode(',',$this->input->post('theloai'));
			$thoiluong = $this->input->post('thoiluong');
			$diem_imdb = $this->input->post('diem_imdb');
			$link_phude = $this->input->post('link_phude');
			$link_thuyetminh = $this->input->post('link_thuyetminh');
			$gioithieu = $this->input->post('gioithieu');
			$trailer = $this->input->post('trailer');
			$phimbo = $this->input->post('phimbo');
			
			if(empty($phimbo))
			{
				$phimbo = 0;
			}
			
			$tenhinh = $this->chuanhoa->gach_noi($tenphim_en);
			$config['upload_path'] = 'img/poster/';
            $config['allowed_types'] = 'gif|jpg|png';
			$config['file_name'] = $tenhinh;
            $this->load->library("upload", $config);

            if($this->upload->do_upload('poster'))
			{
				$img = $this->upload->data();
				$poster = $config['upload_path'].$img['file_name'];
				$conf['image_library'] = 'gd2';
				$conf['source_image'] = $poster;
				$conf['create_thumb'] = false;
				$conf['maintain_ratio'] = false;
				$conf['width']         = 500;
				$conf['height']       = 750;
				$this->load->library('image_lib', $conf);
				$this->image_lib->resize();
			}
			else
			{
				$poster = '';
			}
			$dat_daodien = array(
				'ten_daodien' => $daodien,
				'ten_daodien_kd' => $this->chuanhoa->convert_vi_to_en($daodien),
			);
			$id_daodien = $this->mdaodien->themdaodien($dat_daodien);
			$dat_kichban = array();
			if(!empty($kichban))
			{
				foreach($kichban as $key => $item)
				{
					$tam['kichban'] = $item;
					$tam['kichban_kd'] = $this->chuanhoa->convert_vi_to_en($item);
					$id_kichban = $this->mkichban->themkichban($tam);
					$dat_kichban[] = $id_kichban;
				}
			}
			$dat_dienvien = array();
			if(!empty($dienvien))
			{
				foreach($dienvien as $item)
				{
					$tam1['ten_dienvien'] = $item;
					$tam1['ten_dienvien_kd'] = $this->chuanhoa->convert_vi_to_en($item);
					$id_dienvien = $this->mdienvien->themdienvien($tam1);
					$dat_dienvien[] = $id_dienvien;
				}
			}
			$dat_theloai = array();
			if(!empty($theloai))
			{
				foreach($theloai as $item)
				{
					$tam2['tentheloai'] = $item;
					$tam2['tentheloai_kd'] = $this->chuanhoa->convert_vi_to_en($item);
					$id_theloai = $this->mtheloai->themtheloai($tam2);
					$dat_theloai[] = $id_theloai;
				}
			}
			$dat = array(
				'tenphim_vn' => $tenphim_vn,
				'tenphim_en' => $tenphim_en,
				'daodien' => $id_daodien,
				'kichban' => json_encode($dat_kichban),
				'dienvien' => json_encode($dat_dienvien),
				'theloai' => json_encode($dat_theloai),
				'nam_sanxuat' => $nam_sanxuat,
				'thoiluong' => $thoiluong,
				'diem_imdb' => $diem_imdb,
				'link_phude' => $link_phude,
				'link_thuyetminh' => $link_thuyetminh,
				'poster' => $poster,
				'gioithieu' => $gioithieu,
				'phimbo' => $phimbo,
				'trailer' => $trailer,
				'ngay_them' => date('Y-m-d H:i:s'),
			);
			$id_phim = $this->mphim->themphim($dat);
		}
		else 
		{
			$this->load->view('admin/layout', $data); 
		}
	}
	public function xulyfile_xml()
	{
		if(isset($_POST))
		{
			$path = "upload/";
			$movie = $_FILES['file_xml']['name'];
			$movie_tmp = $_FILES['file_xml']['tmp_name'];
			move_uploaded_file($movie_tmp,$path.$movie);
			$xml = simplexml_load_file(base_url('upload/'.$movie)) or die("Error: Cannot create object");
			$tenphim_en = $xml->LocalTitle;
			$nam_sanxuat = $xml->ProductionYear;
			$diem_imdb = $xml->IMDBrating;
			$thoiluong = $xml->RunningTime;
			$daodien = $xml->Director;
			$kichban = str_replace('|', ',', $xml->WritersList);
			$tieude = $xml->LocalTitle;
			$theloai = $xml->Genres;
			$dienvien = $xml->Persons;
			$trailer = $xml->Trailer;
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
				"kichban":"'.$kichban.'",
				"trailer":"'.($trailer).'"
				';
			$theloai_tam = '';
			foreach($theloai->Genre as $val)
			{
				$theloai_tam .= $val.',';
			}
			$theloai_tam = rtrim($theloai_tam, ',');
			$dulieu .= ',"theloai":"'.$theloai_tam.'"';
			$dienvien_tam = '';
			$i = 0;
			foreach($dienvien->Person as $val)
			{
				$dienvien_tam .= $val->Name.',';
				if($i > 10) 
				{
					break;
				}
				$i++;
			}
			$dienvien_tam = rtrim($dienvien_tam, ',');
			$dulieu .= ',"dienvien":"'.$dienvien_tam.'"';
			$dulieu .= '}';
			echo $dulieu;
		}
	}
}
