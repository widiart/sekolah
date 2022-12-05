<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Informasi extends CI_Controller
{

    private $customJs;

    public function __construct()
    {
        parent::__construct();
        $this->load->model(['pengumuman_model', 'agenda_model', 'unduhan_model']);
    }

    public function index()
    {
        $data['page'] = _LANDING_DIR_ . '/informasi/index';
        $data['home'] = true;
        $data['models']['pengumuman'] = $this->pengumuman_model->getAllContent(3);
        $data['models']['agenda'] = $this->slider_model->getAllContent(6);
        $data['models']['unduh'] = $this->setting_model->getAllContent();

        $this->load->view('landing', $data);
    }

    public function pengumuman($id = null)
    {
        if (empty($id)) {
            $data['page'] = _LANDING_DIR_ . '/informasi/pengumuman';
            $data['models']['pengumuman'] = $this->pengumuman_model->getAllContent();
        } else {
            $data['page'] = _LANDING_DIR_ . '/informasi/pengumuman_detail';
            $data['models']['pengumuman'] = $this->pengumuman_model->getContentById($id);
        }

        $this->load->view('landing', $data);
    }

    public function agenda($id = null)
    {
        if (empty($id)) {
            $data['page'] = _LANDING_DIR_ . '/informasi/agenda';
            $data['models']['agenda'] = $this->agenda_model->getAllContent();
        } else {
            $data['page'] = _LANDING_DIR_ . '/informasi/agenda_detail';
            $data['models']['agenda'] = $this->agenda_model->getContentById($id);
        }

        $this->load->view('landing', $data);
    }

    public function unduhan()
    {
        $data['page'] = _LANDING_DIR_ . '/informasi/unduhan';
        $data['models']['unduhan'] = $this->unduhan_model->getAllContent(10);

        $this->load->view('landing', $data);
    }

    public function download($id)
    {
        $this->load->helper('download');
        $data = $this->unduhan_model->getContentById($id);
        
        force_download($data->file, NULL);
    }
}
