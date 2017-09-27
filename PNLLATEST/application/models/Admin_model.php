<?php

class Admin_model extends CI_Model
{
		public function __construct()
        {
                // Call the CI_Model constructor
                parent::__construct();
        }

        public function verify_login_credintial($username,$password)
        {
			
			//$password=base64_encode($password);
			$password=md5($password);
        	
			$sql="SELECT * FROM `rev_admin` WHERE `username`='$username' and `password`='$password'";
			$query_userdetails = $this->db->query($sql);
			$query_userdetails2=$query_userdetails->result();
			//echo "<pre>";print_r($query_userdetails2);
			if(!empty($query_userdetails2))
			{
				//echo "<pre>";print_r($query_userdetails2);
				return $query_userdetails2;
                // print_r($this->db->last_query());
			}
			else
			{
				return 0;
			}
			
			
        }
		public function get_userlist()
    {
		
		//$data['user_info'] =$this->session->userdata('user_info');
		//$user_interanal_id=$data['user_info']->user_interanal_id;
		$sql1="SELECT * FROM  `rev_user` where user_status=1 order by user_interanal_id desc ";
		$query1= $this->db->query($sql1);
	   return $query_res1=$query1->result();
	}

     public function get_userlist_inactive()
	 {
		 $sql1="SELECT * FROM  `rev_user` where user_status=0 order by user_interanal_id desc ";
		 $query1= $this->db->query($sql1);
	    return $query_res1=$query1->result();
	 }		 
    public function user_delete($id)
	 {
		 $sql1="delete FROM  `rev_user` where user_interanal_id=".$id;
		 $query1= $this->db->query($sql1);
	    return 1;
	 }
	 public function getuser_info($id)
    {
		
		//$data['user_info'] =$this->session->userdata('user_info');
		//$user_interanal_id=$data['user_info']->user_interanal_id;
		$sql1="SELECT * FROM  `rev_user` where user_interanal_id=".$id;;
		$query1= $this->db->query($sql1);
	   return $query_res1=$query1->result();
	}
	public function profile_update($user_first_name,$user_interanal_id,$user_last_name,$user_status)
        {
			           $data = array(
						'user_first_name' => $user_first_name,
						'user_last_name' =>$user_last_name,
						'user_status' =>$user_status,
						);
						$this->db->where('user_interanal_id', $user_interanal_id);
						$this->db->update('rev_user', $data);
						$sql="SELECT * FROM `rev_user` WHERE user_interanal_id=".$user_interanal_id;
						$query_userdetails = $this->db->query($sql);
						$query_userdetails2=$query_userdetails->result();
						//echo "<pre>";print_r($query_userdetails2);
						if(!empty($query_userdetails2))
						{
							//echo "<pre>";print_r($query_userdetails2);
							return $query_userdetails2;
							// print_r($this->db->last_query());
						}
						else
						{
							return 0;
						}
						//return 1;
		}
	 
	 
}

?>
