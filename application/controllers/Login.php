<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function index()
	{
		$data['page'] = '/page/landing/login';

		$this->load->view('landing', $data);
		// $this->parser->parse('home', $data);
	}
}
