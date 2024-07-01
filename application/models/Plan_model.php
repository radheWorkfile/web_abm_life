<?php
/*
 * @ https://EasyToYou.eu - IonCube v10 Decoder Online
 * @ PHP 5.6
 * @ Decoder version: 1.0.4
 * @ Release: 02/06/2020
 *
 * @ ZendGuard Decoder PHP 5.6
 */

defined("BASEPATH") or exit("No direct script access allowed");
class Plan_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->common_model->__session();
    }

    public function create_leg()
    {
        $leg = config_item("leg");
        if ($leg == "1") {
            return array("A" => "Left");
        }
        if ($leg == "2") {
            return array("A" => "Left", "B" => "Right");
        }
        if ($leg == "3") {
            return array("A" => "A", "B" => "B", "C" => "C");
        }
        if ($leg == "4") {
            return array("A" => "A", "B" => "B", "C" => "C", "D" => "D");
        }
        if ($leg == "5") {
            return array("A" => "A", "B" => "B", "C" => "C", "D" => "D", "E" => "E");
        }
        if ($leg == "6") {
            return array("A" => "A", "B" => "B", "C" => "C", "D" => "D", "E" => "E", "F" => "F");
        }
    }


    public function find_extreme_position($id, $leg)
    {
        $this->db->select($leg)->from("member")->where(array("id" => $id));
        $result = $this->db->get()->row();
        if ($result->{$leg} == 0) {
            return $id;
        }
        return $this->find_extreme_position($result->{$leg}, $leg);
    }


    public function check_position($position, $leg)
    {
        $this->db->select($leg)->from("member")->where("id", $position);
        $result = $this->db->get()->row();
        if ($result->{$leg} == 0) {
            return $position;
        }
        return false;
    }

    public function find_autopool_field($sponsor = "")
    {

        if (config_item("leg") == "1") {
            $this->db->select("id,A")->from("member")->where("A", 0)->order_by("secret", "ASC")->limit(1);
            $result = $this->db->get()->row();
            $id = $result->id;
            if (trim($result->A) == "0") {
                $position = "A";
            }
        }

        if (config_item("leg") == "2") {
            $this->db->select("id,A,B")->from("member")->where('id', $sponsor)->where("A", 0)->or_where("B", 0)->order_by("secret", "ASC")->limit(1);
            $result = $this->db->get()->row();
            $id = $result->id;
            if (trim($result->A) == "0") {
                $position = "A";
            } else {
                $position = "B";
            }
        }

        if (config_item("leg") == "3") {
            $this->db->select("id,A,B,C")->from("member")->where("A", 0)->or_where("B", 0)->or_where("C", 0)->order_by("secret", "ASC")->limit(1);
            $result = $this->db->get()->row();
            $id = $result->id;
            if (trim($result->A) == "0") {
                $position = "A";
            } else {
                if (trim($result->B) == "0") {
                    $position = "B";
                } else {
                    $position = "C";
                }
            }
        }

        if (config_item("leg") == "4") {
            $this->db->select("id,A,B,C,D")->from("member")->where("A", 0)->or_where("B", 0)->or_where("C", 0)->or_where("D", 0)->order_by("secret", "ASC")->limit(1);
            $result = $this->db->get()->row();
            $id = $result->id;
            if (trim($result->A) == "0") {
                $position = "A";
            } else {
                if (trim($result->B) == "0") {
                    $position = "B";
                } else {
                    if (trim($result->C) == "0") {
                        $position = "C";
                    } else {
                        $position = "D";
                    }
                }
            }
        }


        if (config_item("leg") == "5") {
            $this->db->select("id,A,B,C,D,E")->from("member")->where("A", 0)->or_where("B", 0)->or_where("C", 0)->or_where("D", 0)->or_where("E", 0)->order_by("secret", "ASC")->limit(1);
            $result = $this->db->get()->row();
            $id = $result->id;
            if (trim($result->A) == "0") {
                $position = "A";
            } else {
                if (trim($result->B) == "0") {
                    $position = "B";
                } else {
                    if (trim($result->C) == "0") {
                        $position = "C";
                    } else {
                        if (trim($result->D) == "0") {
                            $position = "D";
                        } else {
                            $position = "E";
                        }
                    }
                }
            }
        }
        return array("id" => $id, "position" => $position);
    }


    public function create_tree($id, $above_id = "", $position = "A")
    {

        $my_tree = "my_tree";
        if ($this->session->admin_id) {
            $my_tree = "user_tree";
        }
        $data = $this->db_model->select_multi("id,name,sponsor,A,B,C,D,E,status,total_a,total_b,topup,total_c,total_d,total_e,mypv,total_a_pv,total_b_pv,my_img,total_a_investment,total_b_investment", "member", array("id" => $id));
        if ($data->topup == "0.00" || $data->status != "Active") {
            $color = "red";
        } else {
            $color = "green";
        }
        $myimg = $data->my_img ? base_url("uploads/" . $data->my_img) : base_url("uploads/site_img/" . $color . ".png");
        $tota_node = "";


        if (config_item("leg") == "1") {
            $tota_node = "Total Downline: " . ($data->total_a + $data->total_b + $data->total_c + $data->total_d + $data->total_e) . "";
        }
        if (config_item("leg") == "2") {


            $down = 0;
            $dat = $this->db->select('*')->from('level')->where('userid', $id)->get()->row_array();
            // echo $this->db->last_query();
            // die;
            for ($i = 1; $i <= 20; $i++) {
                $down = $down + $dat['level' . $i];
            }


            if ($above_id == 1001) {
                $tota_node = "Total Downline: " . $down . "";
                $tota_node = $down;
            } else {
                /* $total_a_pv = "My Business Left: " . $data->total_a_pv;
            $total_b_pv = "My Business Right: " . $data->total_b_pv; */
                if (config_item("enable_investment") == "Yes") {
                    $total_a_pv = "My Investment Left: " . $data->total_a_investment;
                    $total_b_pv = "My Investment Right: " . $data->total_b_investment;
                }
                $tota_node = "Sponsor: " . $data->sponsor . "<br> DownLine: " . $down . "<br/> "; //. $total_a_pv . "<br/>" . $total_b_pv;
            }

        } else {
            if (config_item("leg") == "3") {
                $tota_node = "Total A: " . $data->total_a . "<br/>" . "Total B: " . $data->total_b . "<br/>Total C: " . $data->total_c . "<br/>";
            } else {
                if (config_item("leg") == "4") {
                    $tota_node = "Total A: " . $data->total_a . "<br/>" . "Total B: " . $data->total_b . "<br/>Total C: " . $data->total_c . "<br/>Total D: " . $data->total_d . "<br/>";
                } else {
                    if (config_item("leg") == "5") {
                        $tota_node = "Total A: " . $data->total_a . "<br/>" . "Total B: " . $data->total_b . "<br/>Total C: " . $data->total_c . "<br/>Total D: " . $data->total_d . "<br/>Total E: " . $data->total_e . "<br/>";
                    }
                }
            }
        }
        if ($data->id) {
            $echo = "<a href=\"" . site_url("tree/" . $my_tree . "/" . $id) . "\" title=\"" . $data->name . " (" . config_item("ID_EXT") . $data->id . ") \" style=\"text-decoration: none; color: " . $color . "; margin: 5px\" data-toggle=\"popover\" data-trigger=\"hover\" data-html=\"true\" data-placement=\"top\" data-content=\"\n" . $tota_node . /* "<br/>\nMy Business: " . $data->mypv  */ "\n\n\"><img class=\"img-circle\" style=\"height: 40px\" src=\"" . $myimg . "\"><br/>" . $data->name . "<br/></a>";
            return array("A" => $data->A, "B" => $data->B, "C" => $data->C, "D" => $data->D, "E" => $data->E, "data" => $echo, "id" => $data->id);
        }
        return array("data" => "<a target=\"blank\" title=\"Register New Member.\" href=\"" . site_url("tree/new_user/" . $position . "/" . $above_id) . "\"><img style=\"height: 50px\" src=\"" . base_url("uploads/site_img/new.png") . "\"></a>");
    }

    public function create_tree_auto($id, $above_id = "", $position = "A")
    {

        $my_tree = "my_autopool_tree";
        // if ($this->session->admin_id) {
        //     $my_tree = "user_tree";
        // }

        $sign = $this->db->select('signup_package')->from('member')->where('id', $id)->get()->row();

        if ($sign->signup_package == 1) {
            $table = 'member';
        } elseif ($sign->signup_package == 2) {
            $data = $this->db->select("at1.member_id as id,at1.A,at1.B,at1.C,m.name,m.status,m.topup")->from('autopool1_table as at1')->where("at1.member_id", $id)->join('member as m', 'm.id=at1.member_id', 'left')->get()->row();


            // $table='autopool1_table';
        } elseif ($sign->signup_package == 3) {
            $data = $this->db->select("at2.member_id as id,at2.A,at2.B,at2.C,m.name,m.status,m.topup")->from('autopool2_table as at2')->where("at2.member_id", $id)->join('member as m', 'm.id=at2.member_id', 'left')->get()->row();
            // $table='autopool2_table';
        } elseif ($sign->signup_package == 4) {
            $data = $this->db->select("at3.member_id as id,at3.A,at3.B,at3.C,m.name,m.status,m.topup")->from('autopool3_table as at3')->where("at3.member_id", $id)->join('member as m', 'm.id=at3.member_id', 'left')->get()->row();
            // $table='autopool3_table';
        } elseif ($sign->signup_package == 5) {
            $data = $this->db->select("at4.member_id as id,at4.A,at4.B,at4.C,m.name,m.status,m.topup")->from('autopool4_table as at4')->where("at4.member_id", $id)->join('member as m', 'm.id=at4.member_id', 'left')->get()->row();
            // $table='autopool4_table';
        }




        // $data = $this->db_model->select_multi("m.id,m.name,sponsor,A,B,C,D,E,status,topup", $table, array("member_id" => $id));




        if ($data->topup == "0.00" || $data->status != "Active") {
            $color = "red";
        } else {
            $color = "green";
        }
        $myimg = $data->my_img ? base_url("uploads/" . $data->my_img) : base_url("uploads/site_img/" . $color . ".png");
        $tota_node = "";





        if ($data->id) {
            $echo = "<a href=\"" . site_url("tree/" . $my_tree . "/" . $id) . "\" title=\"" . $data->name . " (" . config_item("ID_EXT") . $data->id . ") \" style=\"text-decoration: none; color: " . $color . "; margin: 5px\" data-toggle=\"popover\" data-trigger=\"hover\" data-html=\"true\" data-placement=\"top\" data-content=\"\n" . $tota_node . /* "<br/>\nMy Business: " . $data->mypv  */ "\n\n\"><img class=\"img-circle\" style=\"height: 40px\" src=\"" . $myimg . "\"><br/>" . $data->name . "<br/></a>";
            return array("A" => $data->A, "B" => $data->B, "C" => $data->C, "D" => $data->D, "E" => $data->E, "data" => $echo, "id" => $data->id);
        }
        return array("data" => "<a ><img style=\"height: 50px\" src=\"" . base_url("uploads/site_img/new.png") . "\"></a>");
    }


    public function ref_list($id, $sn = 1)
    {
        $this->db->select("id, name, phone, join_time, total_a, sponsor, total_b, total_c, total_d, total_e")->from("member")->where(array("position" => htmlentities($id)));
        $data = $this->db->get()->result();
        foreach ($data as $e) {
            echo "<tr>\n        <td>" . $sn++ . "</td>\n        <td>" . $e->name . "</td>\n        <td>" . $e->join_time . "</td>\n        <td>" . ($e->total_a + $e->total_b + $e->total_c + $e->total_d + $e->total_e) . "</td>\n        <td>" . config_item("ID_EXT") . $e->sponsor . "</td>\n    </tr>";
            $last_id = $e->id;
        }
        if (trim($last_id) !== "") {
            $this->ref_list($last_id, $sn);
        }
    }



    // autopool added by ishu start
    public function find_autopool_leg($table, $signup_package)
    {
        $this->db->select("member_id,A,B,C")->from($table)->where('signup_package', $signup_package)->where("A", 0)->or_where("B", 0)->or_where("C", 0)->order_by("id", "ASC")->limit(1);
        $result = $this->db->get()->row();

        $id = $result->member_id;
        if (trim($result->A) == "0") {
            $position = "A";
        } else {
            if (trim($result->B) == "0") {
                $position = "B";
            } else {
                if (trim($result->C) == "0") {
                    $position = "C";
                }
            }
        }

        return array("id" => $id, "position" => $position);
    }

    // autopool added by ishu start end

}
