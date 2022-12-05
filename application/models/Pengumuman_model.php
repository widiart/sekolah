<?php

class Pengumuman_model extends CI_Model
{

    private $table = 'pengumuman';

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
        date_default_timezone_set("Asia/Jakarta");
    }

    function getAllContent($limit = 0)
    {
        $query = $this->db->get_where($this->table, ['is_visible' => 1], $limit);

        return $query->result();
    }

    function getContentById($id)
    {
        $query = $this->db->get_where($this->table, ['is_visible' => 1, 'id' => $id]);

        return $query->row();
    }

    function insert($data)
    {
        unset($data['submit']);
        return $this->db->insert($this->table, $data);
    }

    function update($data, $id)
    {
        unset($data['submit']);
        return $this->db->update($this->table, $data, ['id' => $id]);
    }

    function delete($id)
    {
        return $this->db->delete($this->table, ['id' => $id]);
    }
}
