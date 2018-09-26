<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function __construct() {
		parent::__construct();
		
		$this->load->model('mslide');
	}
	public function index()
	{
		$data['title'] = 'Trang chủ | phimmt';
		$data['slide'] = 'home/slide';
		$data['phimmoi'] = $this->mphim->phimmoicapnhat();
		$theloai = $this->mtheloai->theloai();
		
		$result = array();
		foreach($theloai as $item)
		{
			$result[] = array(
				'theloai' => $item['tentheloai'],
				'phim' => $this->mphim->get_list_phim($item['id_theloai'], 12, NULL, 'rand()'),
			);
		}
		$data['list_phim'] = $result;
		
		$data['list_slide'] = $this->mslide->danhsach();
		
		$data['content'] = 'home/home';
		$this->load->view('index', $data);
	}
	public function trailer()
	{
		if(isset($_POST['id']))
		{
			$phim = $this->mphim->playphim($_POST['id']);
			$trailer = $phim['trailer'];
			$json['trailer'] = $trailer;
			echo json_encode($json);
		}
	}
}
