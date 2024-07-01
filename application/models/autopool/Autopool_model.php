<?php
class Autopool_model extends CI_Model
{
  function checkautopool1($signup_package)
  {
    $this->db->select('m.id');
    $this->db->from('member as m');

    if ($signup_package == 1) {
      $this->db->where('al.level2>=', 4);
      $this->db->where('m.signup_package', 1);
      $this->db->join('level as al', 'al.userid=m.id');
    }
    
    else {
      // $this->db->where('al.level1>=', 3);
      // $this->db->where('m.signup_package', $signup_package);
      // $this->db->join('auto_level1 as al', 'al.userid=m.id');
    }
   


    return $this->db->get()->row_array();
  }


  function checkautopool2($signup_package)
  {
    $this->db->select('m.id');
    $this->db->from('member as m');

    if ($signup_package == 1) {
      $this->db->where('al.level2>=', 4);
      $this->db->where('m.signup_package', 1);
      $this->db->join('level as al', 'al.userid=m.id');
    }
    
    else {
      $this->db->where('al.level3>=', 27);
      $this->db->where('m.signup_package', $signup_package);
      $this->db->join('auto_level1 as al', 'al.userid=m.id');
    } 
    return $this->db->get()->row_array();
  }


  function checkautopool3($signup_package)
  {
    $this->db->select('m.id');
    $this->db->from('member as m');

    if ($signup_package == 1) {
      $this->db->where('al.level2>=', 4);
      $this->db->where('m.signup_package', 1);
      $this->db->join('level as al', 'al.userid=m.id');
    }
    
    else {
      $this->db->where('al.level3>=', 27);
      $this->db->where('m.signup_package', $signup_package);
      $this->db->join('auto_level2 as al', 'al.userid=m.id');
    } 
    return $this->db->get()->row_array();
  }


  function checkautopool4($signup_package)
  {
    $this->db->select('m.id');
    $this->db->from('member as m');

    if ($signup_package == 1) {
      $this->db->where('al.level2>=', 4);
      $this->db->where('m.signup_package', 1);
      $this->db->join('level as al', 'al.userid=m.id');
    }
    
    else {
      $this->db->where('al.level3>=', 27);
      $this->db->where('m.signup_package', $signup_package);
      $this->db->join('auto_level3 as al', 'al.userid=m.id');
    } 
    return $this->db->get()->row_array();
  }

  function checkautopool5($signup_package)
  {
    $this->db->select('m.id');
    $this->db->from('member as m');

    if ($signup_package == 1) {
      $this->db->where('al.level2>=', 4);
      $this->db->where('m.signup_package', 1);
      $this->db->join('level as al', 'al.userid=m.id');
    }
    
    else {
      $this->db->where('al.level3>=', 27);
      $this->db->where('m.signup_package', $signup_package);
      $this->db->join('auto_level4 as al', 'al.userid=m.id');
    } 
    return $this->db->get()->row_array();
  }





  function get_autopool($con)
  {
    return $this->db->select('*')->from('autopool_table')->where($con)->get()->result_array();
  }
}
