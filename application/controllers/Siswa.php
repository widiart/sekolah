<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Siswa extends CI_Controller
{

	private $customJs;

	public function __construct()
	{
		parent::__construct();
        $allowedRole = ['admin',];

        if (!in_array($this->session->userdata('role'), $allowedRole)) {
            redirect('/login');
        }

		$this->load->model(['siswa_model','ruang_model','kelas_model']);
		$this->load->helper('form');
	}

	public function index()
	{
		$data['page'] = _ADMIN_DIR_ . '/siswa/index';
		$data['models']['siswa'] = $this->siswa_model->getAllContentWithRelation();

		$this->load->view('admin', $data);
	}

	public function detail($id)
	{
		$data['page'] = _ADMIN_DIR_ . '/siswa/detail';
		$data['models']['siswa'] = $this->siswa_model->getContentByIdWithRelation($id);
		$data['models']['form'] = [
			'title' => 'Detail Siswa',
			'subtitle' => 'Data Siswa',
		];

		$this->load->view('admin', $data);
	}

	public function add()
	{
		$data['page'] = _ADMIN_DIR_ . '/siswa/form';
		$data['models']['kelas'] = $this->kelas_model->getAllContent();
		$data['models']['form'] = [
			'title' => 'Tambah Baru',
			'subtitle' => 'Data siswa',
			'action' => '/admin/siswa/add_action',
		];

		if($this->session->flashdata('input')) {
			$data['models']['form'] = $this->session->flashdata('input');
		}

		$this->load->view('admin', $data);
	}

	public function add_action()
	{
		$post = $this->input->post();
		$post['foto'] = $this->upload();
		if($this->siswa_model->insert($post)){
			redirect('/admin/siswa');
		} else {
			$this->session->set_flashdata('input',$this->input->post());
			redirect('/admin/siswa/add');
		}

	}

	public function update($id)
	{
		$data['page'] = _ADMIN_DIR_ . '/siswa/form';
		$data['models']['ruang'] = $this->ruang_model->getAllContent();
		$data['models']['siswa'] = $this->siswa_model->getContentByIdWithRelation($id);
		$data['models']['form'] = [
			'title' => 'Update',
			'subtitle' => 'Data Siswa',
			'action' => '/admin/siswa/update_action/'.$id,
		];
		
		if($this->session->flashdata('input')) {
			$data['models']['form'] = array_merge($data['models']['form'],$this->session->flashdata('input'));
		} else {
			$model = $this->siswa_model->getContentByIdWithRelation($id);
			$data['models']['form'] = array_merge($data['models']['form'],$this->objToArray($model));
		}

		$this->load->view('admin', $data);
	}

	public function hapus($id)
	{
		$this->siswa_model->delete($id);

		redirect('/admin/siswa');
	}

	public function update_action($id)
	{
		$post = $this->input->post();
		$post['foto'] = $this->upload();
		if($this->siswa_model->update($post,$id)){
			redirect('/admin/siswa');
		} else {
			$this->session->set_flashdata('input',$this->input->post());
			redirect('/admin/siswa/update/'.$id);
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
		$config['upload_path']          = 'assets/img/siswa/';
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
