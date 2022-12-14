<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pengumuman extends CI_Controller
{

    private $customJs;

    public function __construct()
    {
        parent::__construct();
        $allowedRole = ['admin',];

        if (!in_array($this->session->userdata('role'), $allowedRole)) {
            redirect('/login');
        }

        $this->load->model(['pengumuman_model']);
        $this->load->helper('form');
    }

    public function index()
    {
        $data['page'] = _ADMIN_DIR_ . '/pengumuman/index';
        $data['models']['pengumuman'] = $this->pengumuman_model->getAllContent();

        $this->load->view('admin', $data);
    }

    public function detail($id)
    {
        $data['page'] = _ADMIN_DIR_ . '/pengumuman/detail';
        $data['models']['pengumuman'] = $this->pengumuman_model->getContentById($id);
        $data['models']['form'] = [
            'title' => 'Tambah Baru',
            'subtitle' => 'Data Pengumuman',
        ];

        $this->load->view('admin', $data);
    }

    public function add()
    {
        $data['page'] = _ADMIN_DIR_ . '/pengumuman/form';
        $data['models']['form'] = [
            'title' => 'Tambah Baru',
            'subtitle' => 'Data pengumuman',
            'action' => '/admin/pengumuman/add_action',
        ];

        if ($this->session->flashdata('input')) {
            $data['models']['form'] = $this->session->flashdata('input');
        }

        $this->load->view('admin', $data);
    }

    public function add_action()
    {
        $post = $this->input->post();
        $post['thumbnail'] = $this->upload();
        if ($this->pengumuman_model->insert($post)) {
            redirect('/admin/pengumuman');
        } else {
            $this->session->set_flashdata('input', $this->input->post());
            redirect('/admin/pengumuman/add');
        }
    }

    public function update($id)
    {
        $data['page'] = _ADMIN_DIR_ . '/pengumuman/form';
        $data['models']['pengumuman'] = $this->pengumuman_model->getContentById($id);
        $data['models']['form'] = [
            'title' => 'Update',
            'subtitle' => 'Data pengumuman',
            'action' => '/admin/pengumuman/update_action/' . $id,
        ];

        if ($this->session->flashdata('input')) {
            $data['models']['form'] = array_merge($data['models']['form'], $this->session->flashdata('input'));
        } else {
            $model = $this->pengumuman_model->getContentById($id);
            $data['models']['form'] = array_merge($data['models']['form'], $this->objToArray($model));
        }

        $this->load->view('admin', $data);
    }

    public function hapus($id)
    {
        $this->pengumuman_model->delete($id);

        redirect('/admin/pengumuman');
    }

    public function update_action($id)
    {
        $post = $this->input->post();
        $post['thumbnail'] = $this->upload();
        if ($this->pengumuman_model->update($post, $id)) {
            redirect('/admin/pengumuman');
        } else {
            $this->session->set_flashdata('input', $this->input->post());
            redirect('/admin/pengumuman/update/' . $id);
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
        $config['upload_path']          = 'assets/img/pengumuman/';
        $config['file_name']            = str_replace(" ", "", $this->input->post('judul'));
        $config['overwrite']            = true;
        $config['allowed_types']        = 'gif|jpg|png';

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('thumbnail')) {
            $error = ['error' => $this->upload->display_errors()];
            $path = '';
        } else {
            $data = $this->upload->data();
            $path = $config['upload_path'] . str_replace(" ", "", $this->input->post('judul')) . $data['file_ext'];
        }

        return $path;
    }
}
