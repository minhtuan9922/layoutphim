<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public function __construct() {
		parent::__construct();
		if(!isset($_SESSION['admin_id']))
		{
			redirect(base_url('admin/dangnhap'));
		}
		$this->load->model('mphim');
	}
	
	public function index()
	{
		$data['title'] = 'Quản trị viên | phimmt';
		$data['content'] = 'admin/user/danhsach';
		$this->load->view('admin/layout', $data);
	}
}
