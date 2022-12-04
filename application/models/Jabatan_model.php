<?php

class Jabatan_model extends CI_Model
{

    private $table = 'jabatan';

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
        date_default_timezone_set("Asia/Jakarta");
    }

    function getAllContent($limit = 0)
    {
        $query = $this->db->get_where($this->table, [], $limit);

        return $query->result();
    }

    function getContentById($id)
    {
        $query = $this->db->get_where($this->table, ['id' => $id]);

        return $query->row();
    }
}
