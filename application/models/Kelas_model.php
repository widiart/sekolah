<?php

class Kelas_model extends CI_Model {

    private $table = 'kelas';

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
		date_default_timezone_set("Asia/Jakarta");
    }

	function getAllContent($limit = 0){
        $this->db->select("{$this->table}.*,jurusan.nama as nama_jurusan");
        $this->db->from($this->table);
        $this->db->join('jurusan', $this->table.'.id_jurusan = jurusan.id');
        $query = $this->db->get();
        
        return $query->result();
    }
    
	function getContentById($id){
        $this->db->select("{$this->table}.*,jurusan.nama as nama_jurusan");
        $this->db->from($this->table);
        $this->db->join('jurusan', $this->table.'.id_jurusan = jurusan.id');
        $this->db->where("{$this->table}.id = $id");
        $query = $this->db->get();
        
        return $query->row();
    }
}