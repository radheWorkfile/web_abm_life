<?php

/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without
 * permission. Project Developer: Camwel Corporate Solution PVT LTD Developed for: Exolim IT Services
 * Pvt Ltd
 **************************************************************************************************/

defined('BASEPATH') or exit('No direct script access allowed');

class Users extends CI_Controller
{
    /**
     * Income Section for Admin Only
     */
    public function __construct()
    {
        parent::__construct();
        if ($this->login->check_session() == FALSE) {
            redirect(site_url('site/admin'));
        }
        $this->load->library('pagination');
    }

    public function login_member($id)
    {

        $data     = $this->db_model->select_multi("id, name, password, email, last_login_ip, last_login, status", 'member', array('id' => $id));
        $session = md5($user . time());
        $this->session->set_userdata(array(
            'user_id'    => $data->id,
            'email'      => $data->email,
            'name'       => $data->name,
            'ip'         => $data->last_login_ip,
            'last_login' => $data->last_login,
            'session'    => $session,
        ));
        $data2 = array(
            'last_login_ip' => $this->input->ip_address(),
            'last_login'    => time(),
            'session'       => $session,
        );
        $this->db_model->update($data2, 'member', array('id' => $data->id));
        redirect(site_url('member'));
    }

    public function view_members()
    {
        $config['base_url']   = site_url('users/view_members');
        $config['per_page']   = 10;
        $config['total_rows'] = $this->db_model->count_all('member');
        $page                 = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->pagination->initialize($config);

        $this->db->select('id, name, phone, sponsor, topup, join_time, total_a, total_b, total_c, total_d, total_e')
            ->from('member');

        $this->db->limit($config['per_page'], $page)->order_by('secret', 'DESC');

        $data['members'] = $this->db->get()->result_array();

        $data['title']      = 'List of Members';
        $data['breadcrumb'] = 'Manage Members';
        $data['layout']     = 'member/list_member.php';
        $this->load->view('admin/base', $data);
    }
    public function guest_members()
    {
        $this->db->select('id, name, phone, sponsor, topup, join_time, total_a, total_b, total_c, total_d, total_e')
            ->from('member')->where('topup', 0);
        $this->db->limit($config['per_page'], $page)->order_by('secret', 'DESC');
        $members = $this->db->get()->result_array();
        $data['members']=$members;

        $config['base_url']   = site_url('users/view_members');
        $config['per_page']   = 10;
        $config['total_rows'] = count($members);
        $page                 = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->pagination->initialize($config);



        $data['title']      = 'List of Members';
        $data['breadcrumb'] = 'Manage Members';
        $data['layout']     = 'member/list_member.php';
        $this->load->view('admin/base', $data);
    }

    //############################# autopool member list start##############################

    public function autopool1()
    {

        $config['base_url']   = site_url('users/autopool1');
        $config['per_page']   = 10;
        $config['total_rows'] = $this->db_model->count_all('member');
        $page                 = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->pagination->initialize($config);

        $this->db->select('m.*,at1.date')->where('m.signup_package', 2)->where('m.rank', 'auto1')->from('member as m');
        $this->db->join('autopool1_table as at1', 'at1.member_id = m.id ');
        $this->db->limit($config['per_page'], $page)->order_by('at1.id', 'DESC');
        $data['members'] = $this->db->get()->result_array();
        // echo $this->db->last_query();
        // die;
        // print_r($data['members']);
        // die;

        $data['title']      = 'List of Autopool1';
        $data['breadcrumb'] = 'Manage Members';
        $data['layout']     = 'member/autopool.php';
        $this->load->view('admin/base', $data);
    }

    public function autopool2()
    {

        $config['base_url']   = site_url('users/autopool2');
        $config['per_page']   = 10;
        $config['total_rows'] = $this->db_model->count_all('member');
        $page                 = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->pagination->initialize($config);

        $this->db->select('m.*,at2.date')->where('m.signup_package', 3)->where('m.rank', 'auto2')->from('member as m');
        $this->db->join('autopool2_table as at2', 'at2.member_id = m.id ');
        $this->db->limit($config['per_page'], $page)->order_by('at2.id', 'DESC');
        $data['members'] = $this->db->get()->result_array();
        // echo $this->db->last_query();
        // die;
        // print_r($data['members']);
        // die;

        $data['title']      = 'List of Autopool2';
        $data['breadcrumb'] = 'Manage Members';
        $data['layout']     = 'member/autopool.php';
        $this->load->view('admin/base', $data);
    }

    public function autopool3()
    {

        $config['base_url']   = site_url('users/autopool3');
        $config['per_page']   = 10;
        $config['total_rows'] = $this->db_model->count_all('member');
        $page                 = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->pagination->initialize($config);

        $this->db->select('m.*,at3.date')->where('m.signup_package', 4)->where('m.rank', 'auto3')->from('member as m');
        $this->db->join('autopool3_table as at3', 'at3.member_id = m.id ');
        $this->db->limit($config['per_page'], $page)->order_by('at3.id', 'DESC');
        $data['members'] = $this->db->get()->result_array();
        // echo $this->db->last_query();
        // die;
        // print_r($data['members']);
        // die;

        $data['title']      = 'List of Autopool3';
        $data['breadcrumb'] = 'Manage Members';
        $data['layout']     = 'member/autopool.php';
        $this->load->view('admin/base', $data);
    }

    public function autopool4()
    {

        $config['base_url']   = site_url('users/autopool4');
        $config['per_page']   = 10;
        $config['total_rows'] = $this->db_model->count_all('member');
        $page                 = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->pagination->initialize($config);

        $this->db->select('m.*,at4.date')->where('m.signup_package', 5)->where('m.rank', 'auto4')->from('member as m');
        $this->db->join('autopool4_table as at4', 'at4.member_id = m.id ');
        $this->db->limit($config['per_page'], $page)->order_by('at4.id', 'DESC');
        $data['members'] = $this->db->get()->result_array();
        // echo $this->db->last_query();
        // die;
        // print_r($data['members']);
        // die;

        $data['title']      = 'List of Autopool4';
        $data['breadcrumb'] = 'Manage Members';
        $data['layout']     = 'member/autopool.php';
        $this->load->view('admin/base', $data);
    }


    // ##################################autopool member list end#########################


    public function user_detail($id)
    {

        $data['data'] = $this->db_model->select_multi('id, name, email, phone, sponsor, position, signup_package,show_password,address, my_img, last_login, last_login_ip, join_time, registration_ip, rank', 'member', array('id' => $id));

        $data['title']      = 'Member Detail';
        $data['breadcrumb'] = 'Member Detail';
        $data['layout']     = 'member/view_detail.php';
        $this->load->view('admin/base', $data);
    }

    public function topup_member()
    {

        $this->form_validation->set_rules('userid', 'User ID', 'trim|required');
        $this->form_validation->set_rules('amt', 'Top Up Amount', 'trim|required');
        if ($this->form_validation->run() == FALSE) {
            $data['title']      = 'Top Up Member';
            $data['breadcrumb'] = 'Top Up Member';
            $data['layout']     = 'member/topup.php';
            $data['products']   = $this->db->select('*')->where('id', 1)->get('product')->result_array();
            $this->load->view('admin/base', $data);
        } else {
            $epin_value = $this->input->post('amt');
            $product = $this->input->post('product');
            $userid = $this->common_model->filter($this->input->post('userid'));

            $member_topup = $this->db->select('topup')->where('id', $userid)->get('member')->row_array();
            if ($member_topup['topup'] == 0) {


                $data   = array(
                    'topup' => $epin_value,
                    'signup_package' => $product
                );
                $this->db->where('id', $userid);
                $this->db->update('member', $data);
                ///Topup Data Entry
                $data = array(
                    'user_id' => $userid,
                    'epin' => "Diect By Admin",
                    'topup_amount' => $epin_value,
                    'topup_by' => "Admin",
                    'date' => date('Y-m-d'),
                );
                $this->db->insert('topup_record', $data);
                $this->load->model('earning');
                if (config_item('fix_income') == "Yes" && $epin_value > 0 && config_item('give_income_on_topup') == "Yes") {
                    $this->earning->fix_income($userid, $this->db_model->select('sponsor', 'member', array('id' => $userid)), $epin_value);
                } else if (config_item('fix_income') !== "Yes" && $epin_value > 0 && config_item('give_income_on_topup') == "Yes") {
                    $this->earning->reg_earning($userid, $this->db_model->select('position', 'member', array('id' => $userid)), $this->db_model->select('sponsor', 'member', array('id' => $userid)), $this->db_model->select('signup_package', 'member', array('id' => $userid)));
                }

                $this->session->set_flashdata('common_flash', '<div class="alert alert-success">Successfully Top-uped User account.</div>');

                // ishu change start here
                $this->autopool();
                // ishu change end here

                redirect('users/topup-member');
            } else {
                $this->session->set_flashdata('common_flash', '<div class="alert alert-danger">This member already topup account.</div>');
                // redirect(site_url('member/update_legs'));
                redirect(site_url('Users/topup_member'));
            }
        }
    }






    public  function autopool($signup_package = 1)
    {



        $this->load->model('autopool/Autopool_model', 'Autopool_model');
        $this->load->model('plan_model');
        $this->load->model('earning');



        if ($signup_package == 1) {

            $dat = $this->Autopool_model->checkautopool1($signup_package);


            // checking upto level two  member topup or not  start
            if ($dat['id'] !== 1001) {

                $mem1 = $this->db->select('id,A,B,topup')->where('id', $dat['id'])->get('member')->row_array();

                if ($mem1['topup'] > 0) {
                    $mem_A = $this->db->select('id,A,B,topup')->where('id', $mem1['A'])->get('member')->row_array();
                    $mem_B = $this->db->select('id,A,B,topup')->where('id', $mem1['B'])->get('member')->row_array();

                    if ($mem_A['topup'] > 0 && $mem_B['topup'] > 0) {
                        $left_A = $this->db->select('id,A,B,topup')->where('id', $mem_A['A'])->get('member')->row_array();
                        $right_A = $this->db->select('id,A,B,topup')->where('id', $mem_A['B'])->get('member')->row_array();
                        $left_B = $this->db->select('id,A,B,topup')->where('id', $mem_B['A'])->get('member')->row_array();
                        $right_B = $this->db->select('id,A,B,topup')->where('id', $mem_B['B'])->get('member')->row_array();

                        if ($left_A['topup'] > 0 && $right_A['topup'] > 0 && $left_B['topup'] > 0 && $right_B['topup'] > 0) {
                        } else {
                            return 0;
                        }
                    } else {
                        return 0;
                    }
                }
            }

            // cheking upto level two  member topup or not  end



            $autopool_data = $this->plan_model->find_autopool_leg('autopool1_table', $signup_package);
            $position = $autopool_data['id'];
            $leg = $autopool_data['position'];
            $data = array(
                'member_id'       => $dat['id'],
                'signup_package' => 2,
                'topup'           => 88,
                'rank'            => 'auto1',
                'placement_leg'  => ($leg) ? $leg : 'A',
                'position'        => ($position) ? $position : 0,
                'date' =>         date('Y-m-d'),

            );


            $this->db->insert('autopool1_table', $data);

            $this->db->insert('auto_level1', array('userid' => $dat['id']));

            $this->update_level($dat['id'], 'autopool1_table', 'auto_level1');
            $this->db->Where('member_id', $position)->update('autopool1_table', array($leg => $dat['id']));
            $da = array(

                'signup_package' => 2,
                'topup'           => 88,
                'rank'            => 'auto1',

            );

            $this->db->Where('id', $dat['id'])->update('member', $da);
            // echo $this->db->last_query();


            //  autopool record start here
            $data = array(
                'user_id' => $dat['id'],
                'epin' => "Diect By Admin",
                'autopool_amount' => 88,
                'topup_by' => "default",
                'date' => date('Y-m-d'),
            );
            $this->db->insert('autopool_topup_record', $data);
            //  autopool record start end

            // level income distribution start
            $this->earning->auto_earning('autopool1_table', $dat['id'], $this->db_model->select('position', 'autopool1_table', array('member_id' => $dat['id'])), $this->db_model->select('sponsor', 'member', array('id' => $dat['id'])), $this->db_model->select('signup_package', 'member', array('id' => $dat['id'])));

            // level income distribution end



            $signup_package = $signup_package + 1;
        }


        if ($signup_package == 2) {
            $dat = $this->Autopool_model->checkautopool2($signup_package);

            $autopool_data = $this->plan_model->find_autopool_leg('autopool2_table', $signup_package);
            $position = $autopool_data['id'];
            $leg = $autopool_data['position'];
            $data = array(
                'member_id'       => $dat['id'],
                'signup_package' => 3,
                'topup'           => 609,
                'rank'            => 'auto2',
                'placement_leg'  => ($leg) ? $leg : 'A',
                'position'        => ($position) ? $position : 0,
                'date' =>         date('Y-m-d'),

            );

            $this->db->insert('autopool2_table', $data);

            $this->db->insert('auto_level2', array('userid' => $dat['id']));

            $this->update_level($dat['id'], 'autopool2_table', 'auto_level2');
            $this->db->Where('member_id', $position)->update('autopool2_table', array($leg => $dat['id']));
            $da = array(

                'signup_package' => 3,
                'topup'           => 609,
                'rank'            => 'auto2',

            );

            $this->db->Where('id', $dat['id'])->update('member', $da);
            // echo $this->db->last_query();

            //  autopool record start here
            $data = array(
                'user_id' => $dat['id'],
                'epin' => "Diect By Admin",
                'autopool_amount' => 609,
                'topup_by' => "default",
                'date' => date('Y-m-d'),
            );
            $this->db->insert('autopool_topup_record', $data);
            //  autopool record  end

            // level income distribution start
            $this->earning->auto_earning('autopool2_table', $dat['id'], $this->db_model->select('position', 'autopool2_table', array('member_id' => $dat['id'])), $this->db_model->select('sponsor', 'member', array('id' => $dat['id'])), $this->db_model->select('signup_package', 'member', array('id' => $dat['id'])));

            // level income distribution end


            $signup_package = $signup_package + 1;
        }


        if ($signup_package == 3) {
            $dat = $this->Autopool_model->checkautopool3($signup_package);

            $autopool_data = $this->plan_model->find_autopool_leg('autopool3_table', $signup_package);
            $position = $autopool_data['id'];
            $leg = $autopool_data['position'];
            $data = array(
                'member_id'       => $dat['id'],
                'signup_package' => 4,
                'topup'           => 4075,
                'rank'            => 'auto3',
                'placement_leg'  => ($leg) ? $leg : 'A',
                'position'        => ($position) ? $position : 0,
                'date' =>         date('Y-m-d'),

            );

            $this->db->insert('autopool3_table', $data);

            $this->db->insert('auto_level3', array('userid' => $dat['id']));

            $this->update_level($dat['id'], 'autopool3_table', 'auto_level3');
            $this->db->Where('member_id', $position)->update('autopool3_table', array($leg => $dat['id']));
            $da = array(

                'signup_package' => 4,
                'topup'           => 4075,
                'rank'            => 'auto3',

            );

            $this->db->Where('id', $dat['id'])->update('member', $da);
            // echo $this->db->last_query();

            //  autopool record start here
            $data = array(
                'user_id' => $dat['id'],
                'epin' => "Diect By Admin",
                'autopool_amount' => 4075,
                'topup_by' => "default",
                'date' => date('Y-m-d'),
            );
            $this->db->insert('autopool_topup_record', $data);
            //  autopool record start end


            // level income distribution start
            $this->earning->auto_earning('autopool3_table', $dat['id'], $this->db_model->select('position', 'autopool3_table', array('member_id' => $dat['id'])), $this->db_model->select('sponsor', 'member', array('id' => $dat['id'])), $this->db_model->select('signup_package', 'member', array('id' => $dat['id'])));

            // level income distribution end




            $signup_package = $signup_package + 1;
        }

        if ($signup_package == 4) {
            $dat = $this->Autopool_model->checkautopool4($signup_package);

            $autopool_data = $this->plan_model->find_autopool_leg('autopool4_table', $signup_package);
            $position = $autopool_data['id'];
            $leg = $autopool_data['position'];
            $data = array(
                'member_id'       => $dat['id'],
                'signup_package' => 5,
                'topup'           => 32020,
                'rank'            => 'auto4',
                'placement_leg'  => ($leg) ? $leg : 'A',
                'position'        => ($position) ? $position : 0,
                'date' =>         date('Y-m-d'),

            );

            $this->db->insert('autopool4_table', $data);

            $this->db->insert('auto_level4', array('userid' => $dat['id']));

            $this->update_level($dat['id'], 'autopool4_table', 'auto_level4');
            $this->db->Where('member_id', $position)->update('autopool4_table', array($leg => $dat['id']));
            $da = array(

                'signup_package' => 5,
                'topup'           => 32020,
                'rank'            => 'auto5',

            );

            $this->db->Where('id', $dat['id'])->update('member', $da);
            // echo $this->db->last_query();

            //  autopool record start here
            $data = array(
                'user_id' => $dat['id'],
                'epin' => "Diect By Admin",
                'autopool_amount' => 32020,
                'topup_by' => "default",
                'date' => date('Y-m-d'),
            );
            $this->db->insert('autopool_topup_record', $data);
            //  autopool record start end


            // level income distribution start
            $this->earning->auto_earning('autopool4_table', $dat['id'], $this->db_model->select('position', 'autopool4_table', array('member_id' => $dat['id'])), $this->db_model->select('sponsor', 'member', array('id' => $dat['id'])), $this->db_model->select('signup_package', 'member', array('id' => $dat['id'])));
            // level income distribution end


            $signup_package = $signup_package + 1;
        }

        return 0;
    }

    function update_level($user_id, $auto_table, $auto_lavel, $i = 20, $e = 1)
    {
        if ($i > 0) {
            $lvl_position_id = $this->db_model->select('position', $auto_table, array('member_id' => $user_id,));
            if (strlen($lvl_position_id) > 2) {
                $get_level = $this->db_model->select('level' . $e, $auto_lavel, array('userid' => $lvl_position_id));
                $this->db->set('level' . $e, $get_level + 1);
                $this->db->where('userid', $lvl_position_id);
                $this->db->update($auto_lavel);
                $this->update_level($lvl_position_id, $auto_table, $auto_lavel, $i - 1, $e + 1);
            }
        }
    }



    public function blocked_members()
    {
        $config['base_url']   = site_url('users/view_members');

        $config['total_rows'] = $this->db_model->count_all('member', array('status' => 'Block'));
        $page                 = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->pagination->initialize($config);

        $this->db->select('id, name, phone, sponsor, topup, join_time, total_a, total_b, total_c, total_d, total_e')
            ->from('member')->where(array('status' => 'Block'));

        $this->db->limit($config['per_page'], $page);

        $data['members'] = $this->db->get()->result_array();

        $data['title']      = 'Blocked Members';
        $data['breadcrumb'] = 'Blocked Members';
        $data['layout']     = 'member/list_member.php';
        $this->load->view('admin/base', $data);
    }

    public function latest_members()
    {
        $config['base_url']   = site_url('users/view_members');
        /* $config['per_page']   = 50;
        $config['total_rows'] = $this->db_model->count_all('earning');
        $page                 = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->pagination->initialize($config); */

        $this->db->select('id, name, phone, sponsor, join_time, total_a, total_b, total_c, total_d, total_e')
            ->from('member')->order_by('join_time', 'DESC');

        /* $this->db->limit($config['per_page'], $page); */

        $data['members'] = $this->db->get()->result_array();

        $data['title']      = 'Latest Members';
        $data['breadcrumb'] = 'Latest Members';
        $data['layout']     = 'member/list_member.php';
        $this->load->view('admin/base', $data);
    }

    public function edit_user($id)
    {
        $this->form_validation->set_rules('name', 'Name', 'trim|required');
        $this->form_validation->set_rules('join_time', 'Date of Join', 'trim|required');
        $this->form_validation->set_rules('phone', 'Phone No', 'trim|required');
        $this->form_validation->set_rules('address', 'Address', 'trim|required');
        if ($this->form_validation->run() == TRUE) {
            $name      = $this->input->post('name');
            $email     = $this->input->post('email');
            $phone     = $this->input->post('phone');
            $address   = $this->input->post('address');
            $join_time = $this->input->post('join_time');
            $password  = $this->input->post('password');
            $status    = $this->input->post('status');
            $array     = array(
                'name'      => $name,
                'email'     => $email,
                'phone'     => $phone,
                'address'   => $address,
                'join_time' => $join_time,
                'status'    => $status,


            );
            if (trim($password) !== "") {
                $array = $array + array('password' => password_hash($password, PASSWORD_DEFAULT));
                $array = $array + array('show_password' => trim($this->input->post('password')));
            }
            $this->db->where('id', $this->input->post('id'));
            $this->db->update('member', $array);

            $array = array(
                'tax_no'           => $this->input->post('tax_no'),
                'date_of_birth'    => $this->input->post('birthdate'),
                'gstin'            => $this->input->post('gstin'),
                'aadhar_no'        => $this->input->post('aadhar_no'),
                'bank_name'        => $this->input->post('bank_name'),
                'bank_ac_no'       => $this->input->post('bank_ac_no'),
                'bank_ifsc'        => $this->input->post('bank_ifsc'),
                'bank_branch'      => $this->input->post('bank_branch'),
                'btc_address'      => $this->input->post('btc_address'),
                'nominee_name'     => $this->input->post('nominee_name'),
                'nominee_add'      => $this->input->post('nominee_add'),
                'nominee_relation' => $this->input->post('nominee_relation'),
            );
            $this->db->where('userid', $this->input->post('id'));
            $this->db->update('member_profile', $array);

            $this->session->set_flashdata("common_flash", "<div class='alert alert-success'>User has been updated.</div>");
            redirect(site_url('users/view_members'));
        } else {
            $data['data']    = $this->db_model->select_multi('id, name, email, phone, address, join_time, status', 'member', array('id' => $id));
            $data['profile'] = $this->db_model->select_multi('*', 'member_profile', array('userid' => $id));

            $data['title']      = 'Edit Member';
            $data['breadcrumb'] = 'Edit Member';
            $data['layout']     = 'member/edit_member.php';
            $this->load->view('admin/base', $data);
        }
    }

    public function search()
    {
        $phone     = $this->input->post('phone');
        $email     = $this->input->post('email');
        $sponsor   = $this->common_model->filter($this->input->post('sponsor'));
        $userid    = $this->common_model->filter($this->input->post('userid'));
        $startdate = $this->input->post('startdate');
        $enddate   = $this->input->post('enddate');

        $this->db->select('id, name, phone, sponsor, join_time, total_a, total_b, total_c, total_d, total_e, topup')
            ->from('member')->order_by('name', 'ASC');
        if (trim($phone) !== "") {
            $this->db->where('phone', $phone);
        }
        if (trim($userid) !== "") {
            $this->db->where('id', $userid);
        }
        if (trim($startdate) !== "") {
            $this->db->where('join_time >=', $startdate);
        }
        if (trim($enddate) !== "") {
            $this->db->where('join_time <=', $enddate);
        }
        if (trim($email) !== "") {
            $this->db->where('email', $enddate);
        }
        if (trim($sponsor) !== "") {
            $this->db->where('sponsor', $sponsor);
        }

        $data['members'] = $this->db->get()->result_array();

        $data['title']      = 'Search Results';
        $data['breadcrumb'] = 'Search Results';
        $data['layout']     = 'member/list_member.php';
        $this->load->view('admin/base', $data);
    }

    public function search_user()
    {
        $data['title']      = 'Search Member';
        $data['breadcrumb'] = 'Search Member';
        $data['layout']     = 'member/search_user.php';
        $this->load->view('admin/base', $data);
    }

    public function remove_member($id)
    {
        $check_legs = $this->db_model->count_all('member', array('position' => $id));
        if ($check_legs > 0 || trim($id) == config_item('top_id')) {

            $this->session->set_flashdata("common_flash", "<div class='alert alert-danger'>User Cannot be deleted as there are other users below this user.</div>");
            redirect(site_url('users/view_members'));
        } else {
            $position = $this->db_model->select_multi('position, placement_leg, my_img', 'member', array('id' => $id));
            $data     = array(
                $position->placement_leg => 0,
            );
            $this->db->where('id', $position->position);
            $this->db->update('member', $data);

            $this->db->where('id', $id);
            $this->db->delete('member');

            $this->db->where('userid', $id);
            $this->db->delete('member_profile');
            $this->db->where('userid', $id);
            $this->db->delete('wallet');

            unlink(FCPATH . "uploads/" . $position->my_img);
            $this->session->set_flashdata("common_flash", "<div class='alert alert-success'>User has been deleted from database.</div>");
            redirect(site_url('users/view_members'));
        }
    }

    public function update_legs()
    {
        $this->db->select("id,A,B,C,D,E")->from("member"); ///->where("topup >", "0")
        $data = $this->db->get()->result();
        foreach ($data as $result) {
            if ($result->A !== "0") {
                $count_a = $this->count_node($result->A);
                //$total_a_pv = $this->count_pv($result->A) + $this->db_model->select("mypv", "member", array("id" => $result->A));
                $total_a_matching = $this->count_matching($result->A) + $this->db_model->select("my_business", "member", array("id" => $result->A));
                //$total_a_investment = $this->count_investment($result->A) + $this->db_model->select("topup", "member", array("id" => $result->A));
            } else {
                $count_a = 0;
                $total_a_pv = 0;
                $total_a_matching = 0;
                $total_a_investment = 0;
            }
            if ($result->B !== "0") {
                $count_b = $this->count_node($result->B);
                //$total_b_pv = $this->count_pv($result->B) + $this->db_model->select("mypv", "member", array("id" => $result->B));
                $total_b_matching = $this->count_matching($result->B) + $this->db_model->select("my_business", "member", array("id" => $result->B));
                //$total_b_investment = $this->count_investment($result->B) + $this->db_model->select("topup", "member", array("id" => $result->B));
            } else {
                $count_b = 0;
                $total_b_pv = 0;
                $total_b_matching = 0;
                $total_b_investment = 0;
            }
            if ($result->C !== "0") {
                $count_c = $this->count_node($result->C);
                //$total_c_pv = $this->count_pv($result->C) + $this->db_model->select("mypv", "member", array("id" => $result->C));
                $total_c_matching = $this->count_matching($result->C) + $this->db_model->select("my_business", "member", array("id" => $result->C));
            } else {
                $count_c = 0;
            }
            if ($result->D !== "0") {
                $count_d = $this->count_node($result->D);
                //$total_d_pv = $this->count_pv($result->D) + $this->db_model->select("mypv", "member", array("id" => $result->D));
                $total_d_matching = $this->count_matching($result->D) + $this->db_model->select("my_business", "member", array("id" => $result->D));
            } else {
                $count_d = 0;
            }
            if ($result->E !== "0") {
                $count_e = $this->count_node($result->E);
                //$total_e_pv = $this->count_pv($result->E) + $this->db_model->select("mypv", "member", array("id" => $result->E));
                $total_e_matching = $this->count_matching($result->E) + $this->db_model->select("my_business", "member", array("id" => $result->E));
            } else {
                $count_e = 0;
            }
            $data = array("total_a" => $count_a, "total_b" => $count_b, "total_c" => $count_c, "total_d" => $count_d, "total_e" => $count_e, "total_a_pv" => $total_a_pv, "total_b_pv" => $total_b_pv, "total_c_pv" => $total_c_pv, "total_d_pv" => $total_d_pv, "total_e_pv" => $total_e_pv, "total_a_matching_incm" => $total_a_matching, "total_b_matching_incm" => $total_b_matching, "total_c_matching_incm" => $total_c_matching, "total_d_matching_incm" => $total_d_matching, "total_e_matching_incm" => $total_e_matching, "total_a_investment" => $total_a_investment, "total_b_investment" => $total_b_investment);
            $this->db->where("id", $result->id);
            $this->db->update("member", $data);
        }
        $this->session->set_flashdata('common_flash', '<div class="alert alert-success">Successfully Top-uped User account.</div>');
        redirect(site_url('users/binary_payout'));
    }

    public function count_node($id, $i = 0)
    {
        if ($i == 0) {
            $top_up = $this->db_model->select("topup", "member", array("id" => $id));
            if (0 < $top_up) {
                $i = $i + 1;
            }
        }
        $this->db->select("id,topup")->where("position", $id);
        $data = $this->db->get("member")->result();
        $countdata = $this->db_model->count_all("member", array("position" => $id, "topup >" => "0"));
        $i = $i + $countdata;
        foreach ($data as $result) {
            if ($result->id) {
                $i = $this->count_node($result->id, $i);
            }
        }
        return $i;
    }

    public function count_matching($id, $i = 0)
    {
        $this->db->select("id,my_business")->where("position", $id);
        $data = $this->db->get("member")->result();
        $countdata = $this->db_model->sum("my_business", "member", array("position" => $id, "my_business !=" => "0"));
        $i = $i + $countdata;
        foreach ($data as $result) {
            if ($result->id) {
                $i = $this->count_matching($result->id, $i);
            }
        }
        return $i;
    }
    public function topup_list()
    {
        $config['base_url'] = site_url('users/topup_list');
        $config['per_page'] = 10;
        $config['total_rows'] = $this->db_model->count_all('topup_record');
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->pagination->initialize($config);

        $this->db->select('id,user_id,epin,topup_amount,topup_by,topup_by,date')->from('topup_record')->limit($config['per_page'], $page);

        $data['topup'] = $this->db->get()->result_array();

        $data['title'] = 'Topup List';
        $data['layout'] = 'member/topup_list.php';
        $this->load->view('admin/base', $data);
    }

    public function search_topup()
    {
        $data['title'] = 'Search Topup';
        $data['layout'] = 'member/search_topup.php';
        $this->load->view('admin/base', $data);
    }
    public function search_topup_list()
    {
        $userid    = $this->common_model->filter($this->input->post('userid'));
        $amt       = $this->input->post('amt');
        $startdate = $this->input->post('startdate');
        $enddate   = $this->input->post('enddate');

        $this->db->select('*')
            ->from('topup_record');
        if (trim($userid) !== "") {
            $this->db->where('topup_by', $userid);
        }
        if (trim($amt) !== "") {
            $this->db->where('topup_amount', $amt);
        }
        if (trim($startdate) !== "") {
            $this->db->where('date >=', $startdate);
        }
        if (trim($enddate) !== "") {
            $this->db->where('date <=', $enddate);
        }

        $data['topup'] = $this->db->get()->result_array();

        $data['title'] = 'Topup List';
        $data['layout'] = 'member/topup_list.php';
        $this->load->view('admin/base', $data);
    }


    public function binary_payout()
    {
        $member = $this->db->select('id,A,B,status,topup')->get('member')->result_array();
        foreach ($member as $m) {
            //echo $m['id']." => A =>".$m['A']."=> B =>".$m['B'];
            $A = $this->db->select('topup,status')->where(array('id' => $m['A']))->get('member')->row_array();
            $B = $this->db->select('topup,status')->where(array('id' => $m['B']))->get('member')->row_array();
            //echo "Topup A =>".$A['topup']." Topup B =>".$B['topup']."<br>";
            if ($A['topup'] > 0 && $B['topup'] > 0 && $B['status'] == "Active" && $A['status'] == "Active" && $m['topup'] > 0 && $m['status'] == "Active" && !empty($A['topup']) && !empty($B['topup']) && !empty($B['status']) && !empty($A['status'])) {
                //echo "<pre>";
                //print_r($member);
                $count_product_binary = $this->db_model->count_all("product", array("matching_income >" => 0));
                $count_fix_binary = $this->db_model->select("binary_income", "fix_income", array("1 >" => 0));
                $count_invst_binary = $this->db_model->select("matching_income", "investment_pack", array(0));
                if (0 < $count_product_binary || 0 < $count_fix_binary || 0 < $count_invst_binary) {
                    $this->db->select("id,total_a,total_b,paid_a,paid_b,signup_package,mypv,total_a_matching_incm,total_b_matching_incm, total_c_matching_incm, paid_a_matching_incm, paid_b_matching_incm")->from("member")->where('status', "Active")->where("topup >", 0)->where("total_a >", 0)->where("total_b >", 0)->where("paid_a <", "total_a", false)->where("paid_b <", "total_b", false);
                    $data = $this->db->get()->result();
                    foreach ($data as $result) {
                        $this->load->model("earning");
                        $data2 = array(
                            "total_a" => $result->total_a,
                            "total_b" => $result->total_b,
                            "paid_a" => $result->paid_a,
                            "paid_b" => $result->paid_b,
                            "signup_package" => $result->signup_package,
                            //"mypv" => $result->mypv, 
                            //"total_a_matching_incm" => $result->total_a_matching_incm, 
                            //"total_b_matching_incm" => $result->total_b_matching_incm, 
                            //"total_c_matching_incm" => $result->total_c_matching_incm, 
                            "paid_a_matching_incm" => $result->paid_a_matching_incm,
                            "paid_b_matching_incm" => $result->paid_b_matching_incm
                        );
                        //echo $result->id."<br><pre>";
                        //print_r($data2);
                        $this->earning->process_binary($result->id, $data2);
                    }
                }
                redirect(site_url('users/topup-member'));
            } else {
                redirect(site_url('users/topup-member'));
            }
        }
    }
}
