<?php
$conn = mysqli_connect("localhost","root","Jafar786#","revenue");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  

?> 
<?php
/**
 * Stripe - Payment Gateway integration example
 * ==============================================================================
 * 
 * @version v1.0: stripe_pay_demo.php 2016/09/29
 * @copyright Copyright (c) 2016, http://www.ilovephp.net
 * @author Sagar Deshmukh <sagarsdeshmukh91@gmail.com>
 * You are free to use, distribute, and modify this software
 * ==============================================================================
 *
 */

// Stripe library
require './stripe/stripe/Stripe.php';



/*  $params = array(
	"testmode"   => "on",
	"private_live_key" => "sk_live_gSOHwHkPk7WcLd01YXRyrqNM",
	"public_live_key"  => "pk_live_WNYQST2JocErGTZImP2ttofT",
	"private_test_key" => "sk_test_ERpDF99C5CSG5hvRIYJ0yAvG",
	"public_test_key"  => "pk_test_5DkiptRjh051LQHXkbi7Nf3s"
);  */
 $params = array(
	"testmode"   => "off",
	"private_live_key" => "sk_live_gSOHwHkPk7WcLd01YXRyrqNM",
	"public_live_key"  => "pk_live_WNYQST2JocErGTZImP2ttofT",
	"private_test_key" => "sk_test_ERpDF99C5CSG5hvRIYJ0yAvG",
	"public_test_key"  => "pk_test_5DkiptRjh051LQHXkbi7Nf3s"
);
if ($params['testmode'] == "on") {
	Stripe::setApiKey($params['private_test_key']);
	$pubkey = $params['public_test_key'];
} else {
	Stripe::setApiKey($params['private_live_key']);
	$pubkey = $params['public_live_key'];
}
if(isset($_POST['stripeToken']))
{
	$user_id=$_POST['user_id'];
	
	$sql = "select * from rev_user where user_interanal_id=".$_POST['user_id'];
	$result=$conn->query($sql);
	if ($result->num_rows > 0) 
	{
		 $user=$result->fetch_assoc();
		echo $email=$user['user_email_id'];
		 $token = $_POST['stripeToken'];
	   
	   echo $plan_id =$_POST['package'];
       $invoiceid = "14526321";                      // Invoice ID
	   $description = "Invoice #" . $invoiceid . " - " . $invoiceid; 
		           try {
                   //echo $amount1;
					$customer = Stripe_Customer::create(array(
									'source' => $_POST['stripeToken'],
									'plan' => $plan_id,
									'email' => strip_tags(trim($email)),
									//'account_balance' => $amount1,
									'description' => "Recurring Stripe Payment",
									 'metadata' =>''
								)
							);
					
				   $str_id=$customer->id;
					   $account_balance= $customer-> account_balance;
						$created=$customer->created;
					   $currency= $customer->currency;
						$description= $customer->description;
						$discount= $customer->discount;
						$email=$customer->email;
						$str_sub_id=$customer->subscriptions['data'][0]->id;
						 $sql2 = "INSERT INTO rev_stripe_payment_history set user_id=$user_id,str_id='$str_id',
						     account_balance='$account_balance' ,
							 created='$created' , 
							 currency='$currency' ,
							 description='$description' ,
							 discount='',
							 subscription='$plan_id',
							 str_sub_id='".$str_sub_id."',
							 reg_discount=0";
						$conn->query($sql2);
						
					$result = "success";

				} catch(Stripe_CardError $e) {			

				$error = $e->getMessage();
					$result = "declined";

				} catch (Stripe_InvalidRequestError $e) {
					$result = "declined";		  
				} catch (Stripe_AuthenticationError $e) {
					$result = "declined";
				} catch (Stripe_ApiConnectionError $e) {
					$result = "declined";
				} catch (Stripe_Error $e) {
					$result = "declined";
				} catch (Exception $e) {

					if ($e->getMessage() == "zip_check_invalid") {
						$result = "declined";
					} else if ($e->getMessage() == "address_check_invalid") {
						$result = "declined";
					} else if ($e->getMessage() == "cvc_check_invalid") {
						$result = "declined";
					} else {
						$result = "declined";
					}		  
				}
				
		//echo "<pre>";print_r($customer);exit;		
	
	}
	else
	{
		$result= "User not Exist!";
	}
	
 
       if($result=='success')
	   {
		                //$to = "samiran1109@gmail.com,".$email;
						$to = $email;
						$subject = "Inubaan Software Product - Payment Successful Mail ";
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
							<p>Hi <a style="color:black;text-decoration:none" rel="noreferrer">'.$email.'</a>,</p>
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
						
						
        /* $sql1="update `rev_user` set mail_verfication_code='', user_status=1 where `user_interanal_id`='$user_id' and and `mail_verfication_code`='$verificationcode'"; */
		 $sql1="update `rev_user` set mail_verfication_code='', user_status=1 ,subscription='$plan_id' where `user_interanal_id`='$user_id'"; 
		
		        $conn->query($sql1);
				header('Location: <?php echo base_url();?>index.php/paymentsuccess');
                //exit;
	   }
}
?>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Profit and Loss</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="A INUBAAN Software Product" />
	<meta name="keywords" content="Profit,loss,revenue,adviser" />
	<meta name="author" content="Inubaan Software" />
        <!--webfont-->
<link href='https://fonts.googleapis.com/css?family=Poiret+One|Lily+Script+One|Raleway:400,300,500,600,200,700' rel='stylesheet' type='text/css'>
<!--webfont-->

	

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- <link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'> -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="<?php echo base_url();?>layout/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<?php echo base_url();?>layout/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="<?php echo base_url();?>layout/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="<?php echo base_url();?>layout/css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="<?php echo base_url();?>layout/css/owl.carousel.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>layout/css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="<?php echo base_url();?>layout/css/style.css">

	<!-- Modernizr JS -->
	<!--<script src="<?php echo base_url();?>layout/modernizr-2.6.2.min.js"></script>-->
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="<?php echo base_url();?>layout/js/respond.min.js"></script>
	<![endif]-->
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/593f6451b3d02e11ecc69954/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-100943521-1', 'auto');
  ga('send', 'pageview');

</script>
	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			<div class="row">
				<!--<div class="col-xs-12 col-sm-5 	col-md-5 col-lg-5">
					<div id="gtco-logo"><a href="#">COMPANY logo</a></div>
				</div>-->
				<div class="col-xs-12 col-sm-2 	col-md-2 col-lg-2">
					<div id="gtco-logo"><a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>images/logogg.png" height="50px;" ></a></div>
				</div>
				<div class=" col-sm-10	col-md-10	col-lg-10 text-right menu-1">
					<ul>
						<li><a href="<?php echo base_url();?>">Home</a></li>
                       <!-- <li><a href="#">Blog</a></li>-->
						<li><a href="<?php echo base_url();?>about">About</a></li>
						<!-- <li ><a href="<?php echo base_url();?>subscription">Pricing</a></li>-->
						<li  class="active" ><a href="<?php echo base_url();?>contact">Contact</a></li>
						<li><a href="<?php echo base_url();?>index.php/login">Sign In</a></li>
						 <li><a href="<?php echo base_url();?>howitwork">How It's Work ?</a></li>  
						<!--<li><a href="<?php echo base_url();?>index.php/feedback">Feedback</a></li>--> 
					</ul>
				</div>
				
			</div>
			
		</div>
	</nav>

	
	<div class="container toppadd">
         <span class="chkouttitle"><i>Check Out </i></span>  
          <hr>
          <!-- <span class="billingintx"> Billing Info </span>-->
        <?php if(isset($result))
		{
			?>
			 <p style="background-color: red;padding: 8px 7px 7px 9px;">
			 <?php
			if($result=='success')
			{
				
			}
			else
			{
				echo $result;
			}
			
		}?>
		</p>
		<?php
		?>
		<style>
		.kameron-large {
    margin: 20px auto;
    line-height: 1.3;
    font-size: 3rem;
    text-align: center;
}
.col-md-offset-2 {
    margin-left: 22.667%;
}
.panel-pricing .panel-heading {
    padding: 20px 10px;
    position: relative;
}
panel-heading h3 {
    font-size: 24px;
    line-height: 30px;
    font-family: ProximaNova-Bold;
	color: #fff;
}
.panel-danger > .panel-heading {
    color: #fff;
    background-color: #c93f2f;
    border-color: #ebccd1;
    text-transform: uppercase;
}
.price--bottom {
    background: #fff;
    padding: 20px;
    box-shadow: 0 0 9px rgba(0,0,0,.5);
    border-radius: 10px;
}
.kartra_checkout_h3 {
    font-size: 20px;
    margin: 20px 0 10px;
}
.ckoutbtn {
    width: 60%;
    background-color: dodgerblue;
    color: white;
    padding: 6px 10px;
    margin: 0px 0px 5px 177px;
    text-align: center;
    border: dodgerblue 1px solid;
    border-radius: 5px;
}

.ckoutbtn:hover{
    width: 60%;
    background-color: white;
    color: dodgerblue;
	padding: 6px 10px;
    margin: 0px 0px 5px 177px;
    text-align: center;
    border: dodgerblue 1px solid;
    border-radius: 5px;
    /* padding: 5PX 10PX;
    margin: 50px auto;
    text-align: center;
    border: dodgerblue 1px solid; */
}


.odrdtl {
    min-width: 60px;
    padding: 0 30px;
    font-weight: bold;
}
form label {
    font-weight: bold !important;
}
		</style>
		 
		<!--new design-->
		<section id="plans">
<div class="container">
<h2 class="kameron-large red-text new-tech-h2"><span style="color: black">SAVE BIG</span> when you grab any of these<br>convenient payment plans.</h2>
<div class="row">

<div class="col-md-6 text-center col-md-offset-2">
<div class="panel panel-danger panel-pricing">
<!--<div class="panel-heading">
<h3 style="font-size: 29px;line-height: 29px;font-family: inherit;">Our Pricing Table</h3>
</div>
<ul class="list-group text-center">
<li class="list-group-item"><img style="width: 5%;" src="<?php echo base_url();?>images/main-qimg.png"/>1 Store</li>
<li class="list-group-item"><img style="width: 5%;" src="<?php echo base_url();?>images/main-qimg.png"/>1 FB Ads Account</li>
<li class="list-group-item"> <img style="width: 5%;" src="<?php echo base_url();?>images/main-qimg.png"/>Simulator</li>
</ul>-->
<div class="panel-footer">
<p class="button-header" style="font-size: 20px;font-weight: 700;color: black;">Choose Your Payment Option</p>
<div class="radio" style="display: block;margin: 15px;position: relative;/*! text-align: left; */padding-left: 30px;/*! margin: 4px 0 0; */">
<input id="radio1" name="radio" onclick="show1();" value="option1" type="radio" style="margin: 9px 0px 0px 0;"> 
<label for="radio1" style="display: inline-block;vertical-align: middle;position: relative;padding-left: 20px;font-size: 18px;color: black;">Subscription Payment $29 / Monthly</label>
</div>


<div class="radio" style="display: block;margin: 15px;position: relative;/*! text-align: left; */padding-left: 30px;/*! margin: 4px 0 0; */">
<input id="radio2" name="radio" onclick="show2();" value="option2" type="radio" style="margin: 9px 0px 0px 0;"> 
<label for="radio2" style="display: inline-block;vertical-align: middle;position: relative;padding-left: 20px;font-size: 18px; color: black;">Subscription Payment $197 / Yearly</label>
</div>

</div>
<div class="grey-bg" style="padding: 0 20px 20px;background-color: #f5f5f5;">
<div class="price--bottom">
<p class="sub-value sub-value--bottom" style="font-size: 24px; margin-bottom: 5px;"></p>
<p class="sub-value sub-value--bottom red-text" style="color: #c93f2f !important;font-weight: 700;margin: 0 0 10px;">Save 20% off the monthly price with a single-payment year subscription.</p>
</div>
</div>
</div>
</div>

</div>

</div>
</section>
		
<!--new design-->		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<section id="payment_form_div" style="display:none;">
    <div class="container" style="border: 1px solid #ebccd1;background-color: #f4f4f4;">
		
        <!--  <form action="<?php echo base_url();?>index.php/stripepayment/stripe_data" method="POST" id="payment-form">-->
		<form action="" method="POST" id="payment-form" >
		  <span class="payment-errors"></span>
		</br>  
       
        <div class='row'>
        
        <div class='col-md-6'>
		<div class='form-row'>
		 <center><h3 class="kartra_checkout_h3">
		CARD DETAILS
		</h3>
		 </center>
		</div>
          <input class='form-control'   type='hidden' name="package" id="package" value="">
		   <input type="hidden" name="user_id" value="<?php echo $user_id; ?>"/>
  
			<div class='form-row'>
              <div class='col-xs-12 form-group card required'>
                <label class='control-label'>CARD NUMBER</label>
                <input  class='form-control ' placeholder='ex. 1213 1458 2536 8788' type='text' data-stripe="number">
              </div>
            </div> 
              
              
           
              
            <div class='form-row'>
              <div class='col-xs-4 form-group  required'>
                <label class='control-label'>CVC</label>
                <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' size='4' type='text' data-stripe="cvc">
              </div>
                
                
                
              <div class='col-xs-4 form-group required'>
                <label class='control-label'>Expiration</label>
                <input class='form-control' placeholder='MM' size='2' type='text' data-stripe="exp_month">
              </div>
              <div class='col-xs-4 form-group required'>
                <label class='control-label'></label>
                <input class='form-control ' placeholder='YYYY' size='4' type='text' data-stripe="exp_year">
              </div>
            </div>
            
            
        </div>
        <div class='col-md-6'> <center>
		
		<div class='form-row'>
		<h3 class="kartra_checkout_h3">
		ORDER SUMMARY
		</h3>
		</div>
          <div class="clearfix"></div>
    
            
            
            <table id="monthly_table" style="border: 1px solid #ebccd1; display:none">
								<tbody> 
				<tr  >
				  <td class="odrdtl">Price</td>
				  <td class="odrdtr" >$29</td>
				</tr>
								
							
				<tr >
				  <td class="odrdtl">Estimated Tax</td>
				  <td class="odrdtr">$0</td>
				</tr>
					  
								
				<tr >
				   <td class="odrdtl billingintx"> Order Total : </td>
					<td class="odrdtr billingintx">$29</td>
					
				</tr>
				<tr><td colspan="2" style="min-width: 60px;padding: 0 30px;color: red;">***You will be billed above amount after 7 Days!</td></tr>
				</tbody>       
            
            </table>
			
			<table id="yearly_table" style="border: 1px solid #ebccd1; display:none">
								<tbody> 
				<tr  >
				  <td class="odrdtl">Price</td>
				  <td class="odrdtr" >$197</td>
				</tr>
								
							
				<tr >
				  <td class="odrdtl">Estimated Tax</td>
				  <td class="odrdtr">$0</td>
				</tr>
					  
								
				<tr >
				   <td class="odrdtl billingintx"> Order Total : </td>
					<td class="odrdtr billingintx">$197</td>
					
				</tr>
				<tr><td colspan="2" style="min-width: 60px;padding: 0 30px;color: red;">***You will be billed above amount after 7 Days!</td></tr>
				</tbody>       
            
            </table>
                <img src="<?php echo base_url();?>layout/images/visaa.png">
                        </center></div>
    </div>
    <hr>
          
          
            
            
           
             
		<input type="submit"  value="CHECK OUT" class="ckoutbtn">
          </form>  

     </div>
	 </section>

		  
      </div>
	 
	
 </div>


	<div id="gtco-started">
		<div class="gtco-container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2 class="text-uppercase">Members Area</h2>                    
				</div>
			</div>
			<div class="row animate-box">
				<div class="col-md-12">
					<form class="form-inline">
						<div class="col-md-4 col-sm-4">
							<div class="form-group">
								<label for="email" class="sr-only">Email</label>
								<input type="email" class="form-control" id="email" placeholder="Email">
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<div class="form-group">
								<label for="password" class="sr-only">Password</label>
								<input type="password" class="form-control" id="password" placeholder="Password">
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<button type="submit" class="btn btn-default btn-block">Login</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
    <div class="row">
			<p style="margin-left: 50%;margin-top: 10%;"><a href="<?php echo base_url();?>index.php/registration" class="btn btn-default">Apply Now </a></p>
	</div>
	<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-pb-md">
				<div class="col-md-4 gtco-widget">
					<h3>Inubaan PNL</h3>
					<p><img src="<?php echo base_url();?>images/logogg.png" height="100px;"></p>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
					<ul class="gtco-footer-links">
						<li><a href="<?php echo base_url();?>">Home</a></li>
                        <li><a href="<?php echo base_url();?>">Blog</a></li>
						<li><a href="<?php echo base_url();?>about">About Us</a></li>
						<li><a href="<?php echo base_url();?>contact">Contact US</a></li>
                        <!--<li><a href="#"> Customer Service</a></li>-->
				
						
					</ul>
				</div>


				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
					<ul class="gtco-footer-links">
						<li><a href="#">FAQ</a></li>
                        <!--<li><a href="#">Meetups</a></li>
						<li><a href="#">Newsletter</a></li>-->
						<li><a href="<?php echo base_url();?>howitwork">How it Works</a></li>
                        <li><a href="<?php echo base_url();?>termandcondition">Terms and Conditions</a></li>
						
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
					<ul class="gtco-footer-links">
						<li><a href="<?php echo base_url();?>">Inubaan Softwares</a></li>
						<!--<li><a href="#">Notifications</a></li>-->
						<li><a href="<?php echo base_url();?>/login">Login/Sign up</a></li>
					</ul>
				</div>
			</div>

			<div class="row copyright">
				<div class="col-md-12">
					<p class="pull-left">
						<small class="block">Copyright © 2017 ProfitAndLoss.io - All Rights Reserved.</small> 
						<small class="block">Powered by <a href="#" >INUBAAN SOFTWARE.</a></small>
					</p>
					<span class="pull-right">
						<ul class="gtco-social-icons pull-right">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<!--<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>-->
						</ul>
					</span>
				</div>
			</div>

		</div>
	</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="<?php echo base_url();?>layout/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="<?php echo base_url();?>layout/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="<?php echo base_url();?>layout/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="<?php echo base_url();?>layout/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="<?php echo base_url();?>layout/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="<?php echo base_url();?>layout/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="<?php echo base_url();?>layout/js/jquery.magnific-popup.min.js"></script>
	<script src="<?php echo base_url();?>layout/js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="<?php echo base_url();?>layout/js/main.js"></script>
	
	
   <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>-->
<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
<!-- TO DO : Place below JS code in js file and include that JS file -->
<script type="text/javascript">
	Stripe.setPublishableKey('<?php echo $params['public_test_key']; ?>');
  
	$(function() {
	  var $form = $('#payment-form');
	  $form.submit(function(event) {
		// Disable the submit button to prevent repeated clicks:
		$form.find('.submit').prop('disabled', true);
	
		// Request a token from Stripe:
		Stripe.card.createToken($form, stripeResponseHandler);
	
		// Prevent the form from being submitted:
		return false;
	  });
	});

	function stripeResponseHandler(status, response) {
	  // Grab the form:
	  var $form = $('#payment-form');
	
	  if (response.error) { // Problem!
	
		// Show the errors on the form:
		$form.find('.payment-errors').text(response.error.message);
		$form.find('.submit').prop('disabled', false); // Re-enable submission
	
	  } else { // Token was created!
	
		// Get the token ID:
		var token = response.id;

		// Insert the token ID into the form so it gets submitted to the server:
		$form.append($('<input type="hidden" name="stripeToken">').val(token));
	
		// Submit the form:
		$form.get(0).submit();
	  }
	};
	
	function show1()
	{
		document.getElementById("payment_form_div").style.display = "block";
		document.getElementById("package").value="M1";
		document.getElementById("monthly_table").style.display = "block";
		document.getElementById("yearly_table").style.display = "none";
		
	}
	function show2()
	{
		document.getElementById("payment_form_div").style.display = "block";
		document.getElementById("package").value="Y1";
		document.getElementById("monthly_table").style.display = "none";
		document.getElementById("yearly_table").style.display = "block";
	}
</script>
	</body>
</html>
