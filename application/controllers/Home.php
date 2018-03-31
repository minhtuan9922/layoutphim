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
		$data['content'] = 'home/home';
		$this->load->view('index', $data);
	}
}
