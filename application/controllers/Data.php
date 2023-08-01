<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Data extends CI_Controller
{

	private $customJs;

	public function __construct()
	{
		parent::__construct();
		$this->load->model(['ruang_model', 'guru_model', 'siswa_model']);
	}

	public function index()
	{
		redirect(base_url('/data/inventaris'));
	}

	public function inventaris($id = null)
	{
		if (empty($id)) {
			$data['page'] = _LANDING_DIR_ . '/data/inventaris';
			$data['models']['inventaris'] = $this->ruang_model->getAllContent();
		} else {
			$data['page'] = _LANDING_DIR_ . '/data/inventaris_detail';
			$data['models']['inventaris'] = $this->ruang_model->getContentById($id);
		}

		$this->load->view('landing', $data);
	}

	public function guru()
	{
		$data['page'] = _LANDING_DIR_ . '/data/guru';
		$data['models']['guru'] = $this->guru_model->getAllContentWithRelation();

		$this->load->view('landing', $data);
	}

	public function video()
	{
		$data['page'] = _LANDING_DIR_ . '/home/video';
		$data['models']['video'] = $this->video_model->getAllContent(10);

		$this->load->view('landing', $data);
	}

	public function siswa()
	{
		$data['page'] = _LANDING_DIR_ . '/data/siswa';
		$data['models']['siswa'] = $this->siswa_model->getAllContentWithRelation(order:'kelas.nama');

		$this->load->view('landing', $data);
	}
}
