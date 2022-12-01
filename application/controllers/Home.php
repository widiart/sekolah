<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	private $customJs;

	public function __construct()
	{
		parent::__construct();
		$this->load->model(['berita_model','galeri_model','video_model','slider_model','setting_model','guru_model']);
	}

	public function index()
	{
		$data['page'] = _LANDING_DIR_.'/home/index';
		$data['home'] = true;
		$data['models']['berita'] = $this->berita_model->getAllContent(3);
		$data['models']['slider'] = $this->slider_model->getAllContent(6);
		$data['models']['about'] = $this->setting_model->getAllContent();
		$data['models']['guru'] = $this->guru_model->getAllContentWithRelation();

		$this->load->view('landing', $data);
	}

	public function berita($id = null)
	{
		if(empty($id)) {
			$data['page'] = _LANDING_DIR_.'/home/berita';
			$data['models']['berita'] = $this->berita_model->getAllContent();
		} else {
			$data['page'] = _LANDING_DIR_.'/home/berita_detail';
			$data['models']['berita'] = $this->berita_model->getContentById($id);
		}

		$this->load->view('landing', $data);
	}

	public function galeri()
	{
		$data['page'] = _LANDING_DIR_.'/home/galeri';
		$data['models']['galeri'] = $this->galeri_model->getAllContent(10);
		
		$this->load->view('landing', $data);
	}
	
	public function video()
	{
		$data['page'] = _LANDING_DIR_.'/home/video';
		$data['models']['video'] = $this->video_model->getAllContent(10);

		$this->load->view('landing', $data);
	}
}
