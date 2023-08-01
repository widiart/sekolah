<?php

class Siswa_model extends CI_Model
{

    private $table = 'siswa';

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

    function getAllContentWithRelation($limit = 0,$order = null)
    {
        $this->db->select("{$this->table}.*, kelas.nama as nama_kelas, jurusan.nama as nama_jurusan");
        $this->db->from($this->table);
        $this->db->join("kelas", "{$this->table}.id_kelas = kelas.id");
        $this->db->join("jurusan", "jurusan.id = kelas.id_jurusan");
        $this->db->where(["{$this->table}.is_visible" => 1]);
        if(!empty($order)) {
            $this->db->order_by($order);
        }
        if (!empty($limit)) {
            $this->db->limit($limit);
        }
        $query = $this->db->get();

        return $query->result();
    }

    function getContentById($id)
    {
        $query = $this->db->get_where($this->table, ['is_visible' => 1, 'id' => $id]);

        return $query->row();
    }

    function getContentByIdWithRelation($id)
    {
        $this->db->select("{$this->table}.*, ruang.nama as nama_kelas");
        $this->db->from($this->table);
        $this->db->join("ruang", "{$this->table}.id_kelas = ruang.id");
        $this->db->where(['is_visible' => 1, "{$this->table}.id" => $id]);
        if (!empty($limit)) {
            $this->db->limit($limit);
        }
        $query = $this->db->get();

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
