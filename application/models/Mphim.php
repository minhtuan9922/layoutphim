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
		$this->db->where('active', 1);
		$this->db->order_by('id_phim', 'desc');
		$this->db->limit('12');
		return $this->db->get()->result_array();
	}
	public function playphim($id)
	{
		$this->db->select('*');
		$this->db->from('phim');
		$this->db->where('id_phim', $id);
		return $this->db->get()->row_array();
	}
	public function danhsach($start, $limit) 
	{
		$this->db->from('phim');
		$this->db->where('active', 1); 
		$this->db->order_by('ngay_them desc');
		$this->db->limit($limit, $start);
		return $this->db->get()->result_array();
	}
	public function countAll(){
		$this->db->from('phim');
		$this->db->where('active', 1); 
		return $this->db->count_all_results(); 
	}
	public function themphim($data = array())
	{
		$this->db->insert('phim',$data);
		return $this->db->insert_id();
	}
	public function capnhat($data = array(), $id) 
	{
		$this->db->where('id_phim',$id);
        return $this->db->update('phim',$data);
	}
	public function chitietphim($id) 
	{
		$this->db->from('phim');
		$this->db->where('id_phim',$id);
        return $this->db->get()->row_array();
	}
	public function phimcungtheloai($data = array(), $id)
	{
		if(!empty($data))
		{
			$sql = '(';
			foreach($data as $item)
			{
				$sql .= 'theloai like \'%"'.$item.'"%\' or ';
			}
			$sql = rtrim($sql, ' or ');
			$sql .= ')';
			
			$this->db->from('phim');
			$this->db->where($sql);
			$this->db->where('id_phim != '.$id);
			$this->db->order_by('id_phim', 'RANDOM');
			$this->db->limit(6);
			return $this->db->get()->result_array();
		}
		
		
	}
}