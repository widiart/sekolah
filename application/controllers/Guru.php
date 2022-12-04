<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Guru extends CI_Controller
{

	private $customJs;

	public function __construct()
	{
		parent::__construct();
        $allowedRole = ['admin',];

        if (!in_array($this->session->userdata('role'), $allowedRole)) {
            redirect('/login');
        }

		$this->load->model(['guru_model','jabatan_model']);
		$this->load->helper('form');
	}

	public function index()
	{
		$data['page'] = _ADMIN_DIR_ . '/guru/index';
		$data['models']['guru'] = $this->guru_model->getAllContentWithRelation();

		$this->load->view('admin', $data);
	}

	public function detail($id)
	{
		$data['page'] = _ADMIN_DIR_ . '/guru/detail';
		$data['models']['guru'] = $this->guru_model->getContentByIdWithRelation($id);
		$data['models']['form'] = [
			'title' => 'Tambah Baru',
			'subtitle' => 'Data Guru',
		];

		$this->load->view('admin', $data);
	}

	public function add()
	{
		$data['page'] = _ADMIN_DIR_ . '/guru/form';
		$data['models']['jabatan'] = $this->jabatan_model->getAllContent();
		$data['models']['form'] = [
			'title' => 'Tambah Baru',
			'subtitle' => 'Data Guru',
			'action' => '/admin/guru/add_action',
		];

		if($this->session->flashdata('input')) {
			$data['models']['form'] = $this->session->flashdata('input');
		}

		$this->load->view('admin', $data);
	}

	public function add_action()
	{
		if($this->guru_model->insert($this->input->post())){
			redirect('/admin/guru');
		} else {
			$this->session->set_flashdata('input',$this->input->post());
			redirect('/admin/guru/add');
		}

	}

	public function update($id)
	{
		$data['page'] = _ADMIN_DIR_ . '/guru/form';
		$data['models']['jabatan'] = $this->jabatan_model->getAllContent();
		$data['models']['guru'] = $this->guru_model->getContentByIdWithRelation($id);
		$data['models']['form'] = [
			'title' => 'Update',
			'subtitle' => 'Data Guru',
			'action' => '/admin/guru/update_action/'.$id,
		];
		
		if($this->session->flashdata('input')) {
			$data['models']['form'] = array_merge($data['models']['form'],$this->session->flashdata('input'));
		} else {
			$model = $this->guru_model->getContentByIdWithRelation($id);
			$data['models']['form'] = array_merge($data['models']['form'],$this->objToArray($model));
		}

		$this->load->view('admin', $data);
	}

	public function hapus($id)
	{
		$this->guru_model->delete($id);

		redirect('/admin/guru');
	}

	public function update_action($id)
	{
		$post = $this->input->post();
		$post['foto'] = $this->upload();
		if($this->guru_model->update($post,$id)){
			redirect('/admin/guru');
		} else {
			$this->session->set_flashdata('input',$this->input->post());
			redirect('/admin/guru/update/'.$id);
		}

	}

	private function objToArray($obj)
	{
		$data = [];
		foreach($obj as $key =>$value):
			$data[$key] = $value;
		endforeach;

		return $data; 
	}

	private function upload()
	{
		$config['upload_path']          = 'assets/img/guru/';
        $config['file_name']            = str_replace(" ","",$this->input->post('nama'));
        $config['overwrite']            = true;
		$config['allowed_types']        = 'gif|jpg|png';

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {
            $error = ['error' => $this->upload->display_errors()];
            $path = '';
        } else {
            $data = $this->upload->data();
            $path = $config['upload_path'].str_replace(" ","",$this->input->post('nama')).$data['file_ext'];
        }

		return $path;
	}
}
