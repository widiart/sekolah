<?php
defined('BASEPATH') or exit('No direct script access allowed');

// admin/guru ada di config/routes.php
class Admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $allowedRole = ['admin','osis',];

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
}
