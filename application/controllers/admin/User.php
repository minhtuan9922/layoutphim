<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public function __construct() {
		parent::__construct();
		if(!isset($_SESSION['admin_id']))
		{
			redirect(base_url('admin/dangnhap'));
		}
		$this->load->model('madmin');
	}
	
	public function index()
	{
		$data['title'] = 'Quản trị viên | phimmt';
		$data['content'] = 'admin/user/danhsach';
		$data['users'] = $this->madmin->danhsach();
		$this->load->view('admin/layout', $data);
	}
	public function them()
	{
		$data['title'] = 'Thêm thể loại mới';
		$data['content'] = 'admin/slide/them';
		$data['list_phim'] = $this->mphim->danhsach(NULL, 10);
		
		if(isset($_POST['themslide']))
		{
			$this->form_validation->set_rules('chonphim', 'chọn phim', 'required', array('required' => 'Vui lòng %s'));
			$this->form_validation->set_rules('poster', 'chọn phim', 'required', array('required' => 'Vui lòng %s'));
			$this->form_validation->set_rules('thutu', 'thứ tự', 'required', array('required' => 'Vui lòng nhập %s'));

			if($this->form_validation->run() != FALSE)
			{
				$phim = $this->mphim->chitietphim($this->input->post('chonphim'));
				$tenhinh = $this->chuanhoa->gach_noi($phim['tenphim_en']);
				$config['upload_path'] = 'img/slide/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['file_name'] = $tenhinh;
				$this->load->library("upload", $config);
				if($this->upload->do_upload('background'))
				{
					$img = $this->upload->data();
					$background = $img['file_name'];
					$conf['image_library'] = 'gd2';
					$conf['source_image'] = $config['upload_path'].$img['file_name'];
					$conf['create_thumb'] = false;
					$conf['maintain_ratio'] = false;
					$conf['width']         = 1920;
					$conf['height']       = 1080;
					$this->load->library('image_lib', $conf);
					$this->image_lib->resize();
				}
				else
				{
					$background = '';
				}
				$dat = array(
					'id_phim' => $this->input->post('chonphim'),
					'poster' => $this->input->post('poster'),
					'background' => $background,
					'status' => 1,
					'date' => date('Y-m-d H:i:s'),
					'vitri' => $this->input->post('thutu'),
				);
				$id_slide = $this->mslide->them_slide($dat);
			
				if(!empty($id_slide))
				{
					$_SESSION['success'] = 'Thêm slide thành công!';
					redirect(base_url('admin/slide'));
				}
			}
		}
		$this->load->view('admin/layout', $data); 
	}
	public function chinhsua($id)
	{
		$data['title'] = 'Chỉnh sửa quảng trị viên';
		$data['content'] = 'admin/user/chinhsua';
		
		$data['user'] = $this->madmin->get_user($id);
		
		if(isset($_POST['chinhsua']))
		{
			$this->form_validation->set_rules('account', 'tài khoản', 'required', array('required' => 'Vui lòng nhập %s'));
			$this->form_validation->set_rules('poster', 'họ tên', 'required', array('required' => 'Vui lòng nhập %s'));
			if($this->input->post['password'] != '')
			{
				$this->form_validation->set_rules('password', '', '');
			}

			if($this->form_validation->run() != FALSE)
			{
				$phim = $this->mphim->chitietphim($this->input->post('chonphim'));
				$tenhinh = $this->chuanhoa->gach_noi($phim['tenphim_en']);
				$config['upload_path'] = 'img/slide/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['file_name'] = $tenhinh;
				$this->load->library("upload", $config);
				if($this->upload->do_upload('background'))
				{
					$img = $this->upload->data();
					$background = $img['file_name'];
					$conf['image_library'] = 'gd2';
					$conf['source_image'] = $config['upload_path'].$img['file_name'];
					$conf['create_thumb'] = false;
					$conf['maintain_ratio'] = false;
					$conf['width']         = 1920;
					$conf['height']       = 1080;
					$this->load->library('image_lib', $conf);
					$this->image_lib->resize();
				}
				else
				{
					$background = $data['slide']['background'];
				}
				$dat = array(
					'id_phim' => $this->input->post('chonphim'),
					'poster' => $this->input->post('poster'),
					'background' => $background,
					'status' => 1,
					'vitri' => $this->input->post('thutu'),
				);
				$kq = $this->mslide->capnhat($dat, $id);
			
				if($kq == true)
				{
					$_SESSION['success'] = 'Chỉnh sửa slide thành công!';
					redirect(base_url('admin/slide'));
				}
			}
		}
		$this->load->view('admin/layout', $data);
	}
	public function xoa_slide()
	{
		if(isset($_POST['id_slide']))
		{
			$id_slide = $this->input->post('id_slide');
			
			$kq = $this->mslide->xoa_slide($id_slide);
			if($kq == true)
			{
				echo 'Xóa thành công.';
			}
			else
			{
				echo 'Lỗi';
			}
		}
	}
}
