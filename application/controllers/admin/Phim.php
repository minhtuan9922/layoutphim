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
		$data['title'] = 'Thêm phim mới | phimmt';
		$data['content'] = 'admin/phim/them';
		$this->load->view('admin/layout', $data);
	}
}
