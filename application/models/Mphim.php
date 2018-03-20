<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mphim extends CI_Model{

	public function __construct() {
	parent::__construct();
	}

	public function phimmoicapnhat()
	{
		$this->db->select('*');
		$this->db->from('phim');
		$this->db->order_by('idphim', 'desc');
		$this->db->limit('6');
		return $this->db->get()->result_array();
	}
	public function phim_play($id)
	{
		$this->db->select('*');
		$this->db->from('phim');
		$this->db->where('idphim', $id);
		return $this->db->get()->row_array();
	}
	public function danhsach($start, $limit) 
	{
		$this->db->from('phim');
		$this->db->where('active', 1);
		$this->db->limit($start, $limit);
	}
	public function countAll(){
		return $this->db->count_all('phim'); 
	}
	public function themphim($data = array())
	{
		return $this->db->insert('phim',$db);
	}
	public function capnhat($data = array(), $id) 
	{
		$this->db->where('id_phim',$id);
        return $this->db->update('phim',$data);
	}
}