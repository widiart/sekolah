<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Osis extends CI_Controller
{

    private $customJs;

    public function __construct()
    {
        parent::__construct();
        $this->load->model(['setting_model', 'kegiatan_model', 'pengurus_model']);
    }

    public function index()
    {
        redirect(base_url('/osis/about'));
    }

    public function about()
    {
        $data['page'] = _LANDING_DIR_ . '/osis/about';
        $data['models']['about'] = $this->setting_model->getAllContent();

        $this->load->view('landing', $data);
    }

    public function pengurus()
    {
        $data['page'] = _LANDING_DIR_ . '/osis/pengurus';
        $data['models']['pengurus'] = $this->pengurus_model->getAllContentWithRelation();

        $this->load->view('landing', $data);
    }

    public function kegiatan($id = null)
    {
        if (!empty($id)) {
            $data['page'] = _LANDING_DIR_ . '/osis/kegiatan_detail';
            $data['models']['kegiatan'] = $this->kegiatan_model->getContentById($id);
        } else {
            $data['page'] = _LANDING_DIR_ . '/osis/kegiatan';
            $data['models']['kegiatan'] = $this->kegiatan_model->getAllContent();
        }

        $this->load->view('landing', $data);
    }
}
