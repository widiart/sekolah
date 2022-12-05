<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Unduhan extends CI_Controller
{

    private $customJs;

    public function __construct()
    {
        parent::__construct();
        $allowedRole = ['admin',];

        if (!in_array($this->session->userdata('role'), $allowedRole)) {
            redirect('/login');
        }

        $this->load->model(['unduhan_model']);
        $this->load->helper('form');
    }

    public function index()
    {
        $data['page'] = _ADMIN_DIR_ . '/unduhan/index';
        $data['models']['unduhan'] = $this->unduhan_model->getAllContent();

        $this->load->view('admin', $data);
    }

    public function detail($id)
    {
        $data['page'] = _ADMIN_DIR_ . '/unduhan/detail';
        $data['models']['unduhan'] = $this->unduhan_model->getContentById($id);
        $data['models']['form'] = [
            'title' => 'Tambah Baru',
            'subtitle' => 'Data unduhan',
        ];

        $this->load->view('admin', $data);
    }

    public function add()
    {
        $data['page'] = _ADMIN_DIR_ . '/unduhan/form';
        $data['models']['form'] = [
            'title' => 'Tambah Baru',
            'subtitle' => 'Data unduhan',
            'action' => '/admin/unduhan/add_action',
        ];

        if ($this->session->flashdata('input')) {
            $data['models']['form'] = $this->session->flashdata('input');
        }

        $this->load->view('admin', $data);
    }

    public function add_action()
    {
        $post = $this->input->post();
        $post['file'] = $this->upload();
        if ($this->unduhan_model->insert($post)) {
            redirect('/admin/unduhan');
        } else {
            $this->session->set_flashdata('input', $this->input->post());
            redirect('/admin/unduhan/add');
        }
    }

    public function update($id)
    {
        $data['page'] = _ADMIN_DIR_ . '/unduhan/form';
        $data['models']['unduhan'] = $this->unduhan_model->getContentById($id);
        $data['models']['form'] = [
            'title' => 'Update',
            'subtitle' => 'Data unduhan',
            'action' => '/admin/unduhan/update_action/' . $id,
        ];

        if ($this->session->flashdata('input')) {
            $data['models']['form'] = array_merge($data['models']['form'], $this->session->flashdata('input'));
        } else {
            $model = $this->unduhan_model->getContentById($id);
            $data['models']['form'] = array_merge($data['models']['form'], $this->objToArray($model));
        }

        $this->load->view('admin', $data);
    }

    public function hapus($id)
    {
        $this->unduhan_model->delete($id);

        redirect('/admin/unduhan');
    }

    public function update_action($id)
    {
        $post = $this->input->post();
        $post['file'] = $this->upload();
        if ($this->unduhan_model->update($post, $id)) {
            redirect('/admin/unduhan');
        } else {
            $this->session->set_flashdata('input', $this->input->post());
            redirect('/admin/unduhan/update/' . $id);
        }
    }

    private function objToArray($obj)
    {
        $data = [];
        foreach ($obj as $key => $value) :
            $data[$key] = $value;
        endforeach;

        return $data;
    }

    private function upload()
    {
        $config['upload_path']          = 'assets/img/unduhan/';
        $config['file_name']            = str_replace(" ", "", $this->input->post('nama'));
        $config['overwrite']            = true;
        $config['allowed_types']        = 'gif|jpg|png';

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('file')) {
            $error = ['error' => $this->upload->display_errors()];
            $path = '';
        } else {
            $data = $this->upload->data();
            $path = $config['upload_path'] . str_replace(" ", "", $this->input->post('nama')) . $data['file_ext'];
        }

        return $path;
    }
}
