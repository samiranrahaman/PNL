
<!DOCTYPE html>
<html>
<head>
 <title>Profit and Loss | Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
<meta name="description" content="A INUBAAN Software Product" />
	<meta name="keywords" content="Profit,loss,revenue,adviser" />
	<meta name="author" content="Inubaan Software" />  
<!-- font files -->

<!-- /font files -->
    
    
<!-- css files -->
<link href="<?php echo base_url();?>css/style_l.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css files -->
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
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
<body class="hold-transition login-page" ng-app="myApp" ng-controller="formCtrl">
<div class="form-w3ls">
         <center> <a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>images/logogg.png" height="80px;"></a> </center>
    <ul class="tab-group cl-effect-4">
        
        <li class="tab "><a href="<?php echo base_url();?>">Home</a></li>
		<li class="tab active "><a href="#">Forgot Password</a></li>  
    </ul>
    <div class="tab-content1">
        
        <div id="signup-agile">   
		  <?php if(isset($_GET['success'])) {?>
       <?php if($_GET['success']==1){ ?>
	   <div style="background-color:green;">
		   <strong >New Password Sent Successfully!Check your Mail </strong>  
		  </div>		
	   <?php } ?>
	    <?php if($_GET['success']==0){ ?>
	  
	  <div style="background-color: red;">
		     <strong >User Name/Email does not exists or Matched!</strong> 
		 </div>
		<?php } ?>
		  <?php } ?>
    <form  method="POST" id="payment-form" action="<?php echo base_url();?>forgotpassword/newpassword" >
      
     <div class="form-group">
        <input type="text" class="form-control" placeholder="User Name" id="username" name="username"  required >
	 </div>
      
	   <div class="form-group"  >
        <input type="email" class="form-control" placeholder="Email" id="user_email_id" name="user_email_id"  required >
		  
      </div>
	  
      <div class="row">
       
        
        <div class="col-xs-4 pull-right">
		         <!-- <input type="submit" id="submit" name="submit" value="Sign In" ng-disabled="regform.$invalid" class="btn btn-primary btn-block btn-flat"/>-->
				  <button type="submit" class="btn btn-primary register" ng-disabled="regform.$invalid">Sent</button>
        
        
        <!-- /.col -->
      </div>
    </form>
	
	
	
 </div>
  </div>
    </div>
	
	</div> <!-- /form -->	  
<p class="copyright">Copyright © 2017- All rights reserved -Powered by INUBAAN SOFTWARE.</p>

</body>
</html>
