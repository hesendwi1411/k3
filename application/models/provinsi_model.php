<?php
 
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
 
class Provinsi_model extends CI_Model
{
    // get data dropdown
    function dd_provinsi()
    {
        // ambil data dari db
        $this->db->order_by('provinsi', 'asc');
        $result = $this->db->get('provinsi');
        
        // bikin array
        // please select berikut ini merupakan tambahan saja agar saat pertama
        // diload akan ditampilkan text please select.
        $dd[''] = 'Please Select';
        if ($result->num_rows() > 0) {
            foreach ($result->result() as $row) {
            // tentukan value (sebelah kiri) dan labelnya (sebelah kanan)
                $dd[$row->id_provinsi] = $row->provinsi;
            }
        }
        return $dd;
    }
}
 
/* End of file Provinsi_model.php */
/* Location: ./application/models/Provinsi_model.php */