<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Xemphim extends CI_Controller {
	public function __construct() {
		parent::__construct();
		
		//$this->load->model('mphim');
	}
	public function index($id)
	{
		$data['title'] = 'Xem phim | phimmt';
		$data['phim'] = $this->mphim->playphim($id);
		$data['content'] = 'xemphim';
		$this->load->view('index', $data);
	}
}
