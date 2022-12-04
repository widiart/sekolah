<?php
defined('BASEPATH') or exit('No direct script access allowed');

// admin/guru ada di config/routes.php
class Admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $allowedRole = ['admin',];

        if (!in_array($this->session->userdata('role'), $allowedRole)) {
            redirect('/login');
        }

        $this->load->model(['guru_model']);
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect('/login');
    }

    public function index()
    {
        $data['page'] = _ADMIN_DIR_ . '/dashboard';

        $this->load->view('admin', $data);
    }

    public function siswa()
    {
        $data['page'] = _ADMIN_DIR_ . '/siswa/index';

        $this->load->view('admin', $data);
    }

    public function siswa_tambah()
    {
        $data['page'] = _ADMIN_DIR_ . '/siswa/tambah_siswa';

        $this->load->view('admin', $data);
    }

    public function pengumuman()
    {
        $data['page'] = _ADMIN_DIR_ . '/pengumuman/index';

        $this->load->view('admin', $data);
    }
    public function unduhan()
    {
        $data['page'] = _ADMIN_DIR_ . '/unduhan/index';

        $this->load->view('admin', $data);
    }
}
