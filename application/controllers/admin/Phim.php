<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Phim extends CI_Controller {

	public function __construct() {
		parent::__construct();
//		if(!isset($_SESSION['admin_id']))
//		{
//			redirect(base_url('admin/login'));
//		}
	}
	
	public function index()
	{
		$data['title'] = 'Trang quản phim | phimmt';
//		$data['slide'] = 'home/slide';
		$data['content'] = 'admin/phim/danhsach';
		$this->load->view('admin/layout', $data);
	}
}
