<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
		$data['page'] = '/page/landing/home';
		$data['home'] = true;
		// $data['page'] = '/page/admin/home';

		$this->load->view('landing', $data);
		// $this->parser->parse('home', $data);
	}
}
