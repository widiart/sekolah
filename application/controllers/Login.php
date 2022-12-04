<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model(['user_model']);
	}

	public function index()
	{
		$this->load->helper('form');
		$data['page'] = '/page/landing/login';

		$this->load->view('landing', $data);
		// $this->parser->parse('home', $data);
	}

	public function auth()
	{
		if (!empty($this->input->post())) {
			extract($this->input->post());

			$login = $this->user_model->login($username, $password);
			if (!empty($login->role)) {
				$this->setAdmin($login);
			} else {
				$this->session->set_flashdata('login', 'gagal');
			}
		}

		redirect('/login');
	}

	private function setAdmin($login)
	{
		$session = [
			'username'  => $login->username,
			'role'     => $login->role,
		];

		$this->session->set_userdata($session);

		redirect('/admin');
	}
}
