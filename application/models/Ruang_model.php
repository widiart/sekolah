<?php

class Ruang_model extends CI_Model {

    private $table = 'ruang';

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
		date_default_timezone_set("Asia/Jakarta");
    }

	function getAllContent($limit = 0){
        $this->db->select('ruang.*,jenis_ruang.nama as nama_jenis');
        $this->db->from($this->table);
        $this->db->join('jenis_ruang', $this->table.'.id_jenis_ruang = jenis_ruang.id');
        $query = $this->db->get();
        
        return $query->result();
    }
    
	function getContentById($id){
        $this->db->select('ruang.*,jenis_ruang.nama as nama_jenis');
        $this->db->from($this->table);
        $this->db->join('jenis_ruang', $this->table.'.id_jenis_ruang = jenis_ruang.id');
        $this->db->where("{$this->table}.id = $id");
        $query = $this->db->get();
        
        return $query->row();
    }
}