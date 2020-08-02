<?php
 
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
 
class Provinsi extends CI_Controller
{
    // create akan menampilkan form 
    public function create() 
    {
        // load model dan form helper 
        $this->load->model('provinsi_model');
        $this->load->helper('form_helper');
 
        $data = array(
            'button' => 'Create',
            'action' => site_url('provinsi/create_action'),
            'dd_provinsi' => $this->provinsi_model->dd_provinsi(),
            'provinsi_selected' => $this->input->post('provinsi') ? $this->input->post('provinsi') : '', // untuk edit ganti '' menjadi data dari database misalnya $row->provinsi
	);
        
        $this->load->view('provinsi_form', $data);
    }
}
 
/* End of file Provinsi.php */
/* Location: ./application/controllers/Provinsi.php */