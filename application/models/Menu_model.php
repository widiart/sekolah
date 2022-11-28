<?php

class Menu_model extends CI_Model {

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
		date_default_timezone_set("Asia/Jakarta");
    }

	function get_menu_landing(){
        $query = $this->db->query("SELECT * FROM menu WHERE is_admin = 0 and is_visible = 1");
        
        return $query->result();
    }
}