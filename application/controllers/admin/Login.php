<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct() {
		parent::__construct();
		
	}
	
	public function index()
	{
		$data['title'] = 'Đăng nhập trang quản trị | phimmt';
		echo 'Chào mừng bạn đến với trang Đăng nhập';
//		$data['slide'] = 'home/slide';
//		$data['content'] = 'home/home';
//		$this->load->view('index', $data);
	}
}
