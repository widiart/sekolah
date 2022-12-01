<?php

class Guru_model extends CI_Model {

    private $table = 'guru';

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
		date_default_timezone_set("Asia/Jakarta");
    }

	function getAllContent($limit = 0){
        $query = $this->db->get_where($this->table,['is_visible' => 1],$limit);
        
        return $query->result();
    }

	function getAllContentWithRelation($limit = 0){
        $this->db->select("{$this->table}.*, jabatan.nama as nama_jabatan");
        $this->db->from($this->table);
        $this->db->join("jabatan","{$this->table}.id_jabatan = jabatan.id");
        $this->db->where(['is_visible' => 1]);
        if(!empty($limit)) {
            $this->db->limit($limit);
        }
        $query = $this->db->get();
        
        return $query->result();
    }

	function getContentById($id){
        $query = $this->db->get_where($this->table,['is_visible' => 1,'id'=>$id]);
        
        return $query->row();
    }
}