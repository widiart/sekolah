<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {

	private $customJs;

	public function __construct()
	{
		parent::__construct();
		$this->load->model(['setting_model']);
	}

	public function index()
	{
		redirect(base_url('/profile/about'));
	}

	public function about()
	{
		$data['page'] = _LANDING_DIR_.'/profile/about';
		$data['models']['about'] = $this->setting_model->getAllContent();

		$this->load->view('landing', $data);
	}

	public function visimisi()
	{
		$data['page'] = _LANDING_DIR_.'/profile/visimisi';
		$data['models']['about'] = $this->setting_model->getAllContent();
		
		$this->load->view('landing', $data);
	}
	
	public function video()
	{
		$data['page'] = _LANDING_DIR_.'/home/video';
		$data['models']['video'] = $this->video_model->getAllContent(10);

		$this->load->view('landing', $data);
	}
}
