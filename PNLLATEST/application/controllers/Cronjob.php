<?php
/*
  Description : Controller for  Cronjob
  Author      : samiran
  Date        : 15/06/17
*/
class Cronjob extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		
		 $this->load->library('session');
		$this->load->model('Intregation_model');
			
	}
	public function index()
    {   
      echo "Index";        	
    }
	
    public function storesetupauto()
    {
		 $success=$this->Intregation_model->store_setup_apicall_auto();	
		 echo 1;
	}
	public function fbsetupauto()
    {
		$success=$this->Intregation_model->fb_setup_auto();	
		echo 1;
	}
 }