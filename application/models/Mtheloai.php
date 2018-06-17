<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mtheloai extends CI_Model{

	public function __construct() {
	parent::__construct();
	}

	public function themtheloai($data = array())
	{
		$check_theloai = $this->check_id_theloai($data['tentheloai']);
		if(!empty($check_theloai))
		{
			return $check_theloai['id_theloai'];
		}
		else
		{
			$this->db->insert('theloai',$data);
			return $this->db->insert_id();
		}
	}
	public function capnhat($data = array(), $id) 
	{
		$this->db->where('id_phim',$id);
        return $this->db->update('phim',$data);
	}
	public function check_id_theloai($tentheloai)
	{
		$this->db->select('*');
		$this->db->from('theloai');
		$this->db->like('tentheloai', $tentheloai);
		return $this->db->get()->row_array();
	}
	public function thongtin_theloai($id)
	{
		$this->db->select('*');
		$this->db->from('theloai');
		$this->db->like('id_theloai', $id);
		return $this->db->get()->row_array();
	}
}