<?php

class Setting_model extends CI_Model {

    private $table = 'setting';

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
		date_default_timezone_set("Asia/Jakarta");
    }

	function getAllContent(){
        $query = $this->db->get_where($this->table);
        
        $data = [];
        foreach($query->result() as $isi)
        {
            $data[$isi->name] = $isi->value;
        }

        return $data;
    }

}