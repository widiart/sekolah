<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/userguide3/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

// guru
$route['admin/guru'] = 'guru/index';
$route['admin/guru/add'] = 'guru/add';
$route['admin/guru/add_action'] = 'guru/add_action';
$route['admin/guru/detail/(:num)'] = 'guru/detail/$1';
$route['admin/guru/update/(:num)'] = 'guru/update/$1';
$route['admin/guru/update_action/(:num)'] = 'guru/update_action/$1';
$route['admin/guru/hapus/(:num)'] = 'guru/hapus/$1';

// siswa
$route['admin/siswa'] = 'siswa/index';
$route['admin/siswa/add'] = 'siswa/add';
$route['admin/siswa/add_action'] = 'siswa/add_action';
$route['admin/siswa/detail/(:num)'] = 'siswa/detail/$1';
$route['admin/siswa/update/(:num)'] = 'siswa/update/$1';
$route['admin/siswa/update_action/(:num)'] = 'siswa/update_action/$1';
$route['admin/siswa/hapus/(:num)'] = 'siswa/hapus/$1';

// pengumuman
$route['admin/pengumuman'] = 'pengumuman/index';
$route['admin/pengumuman/add'] = 'pengumuman/add';
$route['admin/pengumuman/add_action'] = 'pengumuman/add_action';
$route['admin/pengumuman/detail/(:num)'] = 'pengumuman/detail/$1';
$route['admin/pengumuman/update/(:num)'] = 'pengumuman/update/$1';
$route['admin/pengumuman/update_action/(:num)'] = 'pengumuman/update_action/$1';
$route['admin/pengumuman/hapus/(:num)'] = 'pengumuman/hapus/$1';

// unduhan
$route['admin/unduhan'] = 'unduhan/index';
$route['admin/unduhan/add'] = 'unduhan/add';
$route['admin/unduhan/add_action'] = 'unduhan/add_action';
$route['admin/unduhan/detail/(:num)'] = 'unduhan/detail/$1';
$route['admin/unduhan/update/(:num)'] = 'unduhan/update/$1';
$route['admin/unduhan/update_action/(:num)'] = 'unduhan/update_action/$1';
$route['admin/unduhan/hapus/(:num)'] = 'unduhan/hapus/$1';
