<?php

class User_model extends CI_Model
{

    private $table = 'user';

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
        date_default_timezone_set("Asia/Jakarta");
    }

    function login($username, $password)
    {
        $query = $this->db->get_where($this->table, ['username' => $username, 'password' => md5($password)]);

        return $query->row();
    }
}
