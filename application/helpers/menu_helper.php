<?php
if(!defined('BASEPATH')) exit('No direct script access allowed');

function get_landing_menu() {
	$CI =& get_instance();
	$CI->load->model('menu_model');
	$result = $CI->menu_model->get_menu_landing();	
	
	$menu = [];
	foreach($result as $isi):
		if($isi->id_parent == 0) {
			$menu[$isi->id]['nama'] = $isi->nama;
			$menu[$isi->id]['url'] = $isi->url;
		} else {
			$menu[$isi->id_parent]['child'][$isi->id]['nama'] = $isi->nama;
			$menu[$isi->id_parent]['child'][$isi->id]['url'] = $isi->url;
		}
	endforeach;

	return $menu;
	
}