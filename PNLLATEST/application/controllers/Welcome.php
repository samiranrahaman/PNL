<?php
/*
  Description : Controller for welcome
  Author      : samiran
  Date        : 15/06/17
*/
class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		
		 $this->load->library('session');
		$this->load->model('dashboard_model');

		 if(!$this->session->userdata('user_info'))
		{
		   redirect('Login');
		} 			
	}
	public function index()
    {   
      $data['user_info'] =$this->session->userdata('user_info');
     $this->load->view('common_header',$data);
      $this->load->view('common_sidemenu',$data);
      $this->load->view('Welcome/Main');
	 // $this->load->view('Dashboard/Main',$data);
      $this->load->view('common_footer');        	
    }
	public function testmail()
	{
		$to ='samiran1109@gmail.com';
						$subject = "Inubaan Software Product - Cron job Mail ";
		               $message ='<table width="480" cellspacing="0" cellpadding="0" border="0">
							<tbody><tr>
							<td valign="top" align="center">
							<table style="border-bottom:1px solid #eee;padding:0 16px" width="480" height="50" cellspacing="0" cellpadding="24" border="0">
							<tbody><tr>
							<td style="background-color:#ffffff" valign="top">
							<h1><span style="color:#f0b41c">Inubaan</span><span style="color:#002745">Software</span><sup><small style="color:#f0b41c;">™</small></sup>
							</span></a></h1>
							</td>
							<td style="text-align:right">
							</td>
							</tr>
							</tbody></table>
							</td>
							</tr>
							<tr>
							<td valign="top" align="center">
							<table style="padding:0 16px 10px" width="480" cellspacing="0" cellpadding="24" border="0">
							<tbody><tr>
							<td style="background-color:#ffffff" valign="top">
							<font style="font-size:16px;color:#444;">
							<p>Hi <a style="color:black;text-decoration:none" rel="noreferrer">'.$to.'</a>,</p>
							<p>Thank you for your Payment.Your account is Active. Please login through below link.</p>
							<p><a href="<?php echo base_url();?>index.php/login">Please click on this link to Login.</a></p>
							<br>

							<p>Kind regards,<br>Inubaan Software Team</p>
							</font>
							</td>
							</tr>
							</tbody></table>
							</td>
							</tr>
							</tbody></table>';

						// Always set content-type when sending HTML email
						$headers = "MIME-Version: 1.0" . "\r\n";
						$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

						// More headers
						$headers .= 'From: Inubaan Software<register@profitandloss.io>' . "\r\n";
						//$headers .= 'Cc: myboss@example.com' . "\r\n";

						mail($to,$subject,$message,$headers);
						
						echo 1;
	}
    
 }