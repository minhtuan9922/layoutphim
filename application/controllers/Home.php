<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function __construct() {
		parent::__construct();
		
		//$this->load->model('mphim');
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
				'phim' => $this->mphim->get_list_phim($item['id_theloai'], 12),
			);
		}
		$data['list_phim'] = $result;
		$data['content'] = 'home/home';
		$this->load->view('index', $data);
	}
}
