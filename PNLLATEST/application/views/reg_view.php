
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
		<li class="tab "><a href="<?php echo base_url();?>index.php/login">Sign In</a></li>
		<li class="tab active"><a href="<?php echo base_url();?>index.php/registration">Join Us</a></li>        
    </ul>
    <div class="tab-content1">
        
    
        <div id="signup-agile">   
		   <div class="alert alert-danger alert-dismissible" ng-show="validationError" style="background-color: red;padding: 5px 0px 5px 11px;">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true" ng-click="ShowHide()"   >×</button>
		 <strong>Registration Failed! User name Exist ! Try Again...</strong>  
		 </div>
          <form  id="regform" name="regform" ng-submit="regformsubmit()" novalidate >
   
      
   
      <div class="form-group"  ng-class="{ 'has-error' : regform.user_first_name.$invalid && !regform.user_first_name.$pristine }">
        <input type="text" class="form-control" placeholder="First name" id="user_first_name" name="user_first_name" ng-model="user.user_first_name" required >
		    <p ng-show="regform.user_first_name.$invalid && !regform.user_first_name.$pristine" class="help-block">First Name is required.</p>
        
      </div> 
      <div class="form-group"  ng-class="{ 'has-error' : regform.user_last_name.$invalid && !regform.user_last_name.$pristine }">
        <input type="text" class="form-control" placeholder="Last name" id="user_last_name" name="user_last_name" ng-model="user.user_last_name" required >
		    <p ng-show="regform.user_last_name.$invalid && !regform.user_last_name.$pristine" class="help-block">Last Name is required.</p>
        
      </div> 
	   <div class="form-group"  ng-class="{ 'has-error' : regform.user_mobile_number.$invalid && !regform.user_mobile_number.$pristine }">
        <input type="number" class="form-control" placeholder="Mobile Number" id="user_mobile_number" name="user_mobile_number" ng-model="user.user_mobile_number" required >
		    <p ng-show="regform.user_mobile_number.$invalid && !regform.user_mobile_number.$pristine" class="help-block">Mobile Number is required.</p>
        
      </div>
	   <div class="form-group"  ng-class="{ 'has-error' : regform.user_email_id.$invalid && !regform.user_email_id.$pristine }">
        <input type="email" class="form-control" placeholder="Email" id="user_email_id" name="user_email_id" ng-model="user.user_email_id" required >
		    <p ng-show="regform.user_email_id.$invalid && !regform.user_email_id.$pristine" class="help-block">Email Id is required.</p>
        
      </div>
	  
	   <div class="form-group"  ng-class="{ 'has-error' : regform.user_username.$invalid && !regform.user_username.$pristine }">
        <input type="text" class="form-control" placeholder="Username" id="user_username" name="user_username" ng-model="user.user_username" required >
		    <p ng-show="regform.user_username.$invalid && !regform.user_username.$pristine" class="help-block">Username is required.</p>
        
      </div>
	  
	   <div class="form-group"  ng-class="{ 'has-error' : regform.user_password.$invalid && !regform.user_password.$pristine }">
        <input type="password" class="form-control" placeholder="Password" id="user_password" name="user_password" ng-model="user.user_password" required >
		    <p ng-show="regform.user_password.$invalid && !regform.user_password.$pristine" class="help-block"> Password is required.</p>
        
      </div>
	  
	  
	  <div class="form-group">
        <input type="checkbox" class="form-control" name="sec" ng-model="checked"  >
		
		<a><b>Have a Secret Code ?</b></a>
		<div class="col-md-6" id="item-details" ng-show="checked">
				<div class="form-group"  ng-class="{ 'has-error' : regform.discount.$invalid && !regform.discount.$pristine }">
				<input type="text" class="form-control" placeholder="Secret Code" id="discount" name="discount" ng-model="discount"  >
					<p ng-show="regform.discount.$invalid && !regform.discount.$pristine" class="help-block">Secret Code.</p>
					<p ng-show="codevalidationError" style="background-color: red;padding: 5px 0px 5px 11px;" >Please Enter Valid Secret Code</p>
				
			  </div>
        </div>		
      </div>
	   <div class="form-group" ng-class="{ 'has-error' : regform.termandcontion.$invalid && !regform.termandcontion.$pristine }">
        <input type="checkbox" class="form-control" name="termandcontion" ng-model="user.termandcontion" required >
		<!--<a href="<?php echo base_url();?>termandcondition" target="_blank">I agree to <b>Terms and Conditions</b></a>-->
		<a download href="<?php echo base_url();?>TermsofUse.pdf ">I agree to <b>Terms and Conditions</b></a>
		  
      </div>
      <div class="row">
       
        
        <div class="col-xs-4 pull-right">
		         <!-- <input type="submit" id="submit" name="submit" value="Sign In" ng-disabled="regform.$invalid" class="btn btn-primary btn-block btn-flat"/>-->
				  <button type="submit" class="btn btn-primary register" ng-disabled="regform.$invalid">Create</button>
        
        
        <!-- /.col -->
      </div>
    </form>
	
	
	
 </div>
  </div>
    </div>
	
	</div> <!-- /form -->	  
<p class="copyright">Copyright © 2017- All rights reserved -Powered by INUBAAN SOFTWARE.</p>

<script>
var app = angular.module("myApp", []);
app.controller("formCtrl", function($scope,$http) {
  
  $scope.regformsubmit = function () {
	  // check to make sure the form is completely valid
	  if($scope.checked==true)
	  {
	   //alert($scope.checked);
	  //alert($scope.discount.length);
			    if($scope.discount.length>0)
			   {
				   //alert($scope.discount);
				   if ($scope.regform.$valid) {
						
							$http({
				method : 'POST',
				url : '<?php echo base_url();?>index.php/Registration/registration_data',
				
						headers: {'Content-Type': 'application/x-www-form-urlencoded'},
				//headers: {'Content-Type': 'application/json'},
					//data :{"myformdata" :JSON.stringify({username:$scope.user.username, passwrd:$scope.user.passwrd})}
					data :JSON.stringify({user_first_name:$scope.user.user_first_name, user_last_name:$scope.user.user_last_name,
										  user_mobile_number:$scope.user.user_mobile_number,user_email_id:$scope.user.user_email_id,
										  user_username:$scope.user.user_username,
										  user_password:$scope.user.user_password,discount:$scope.discount })
					}).success(function(data) {
						 console.log(data);
						 //alert(data);
						 if(data>2) 
						 {
							  /* window.location.href="<?php echo base_url();?>index.php/subscription/index/"+data; */
							  window.location.href="<?php echo base_url();?>index.php/stripepayment/directpayment/"+data;
							 
						 }
						 else if(data==1)
						 {
							   window.location.href="<?php echo base_url();?>index.php/Login";
						 }
						 else if(data==2)
						 {
							 $scope.validationError = true;
							  $scope.codevalidationError = true; 
							 
							 
						 }
						 else
						 {
							 $scope.validationError = true;
						 }
						
						

					});
							
							
							
					} 
				   
			   }
	          else
			   {
				   alert("Please enter Secret Code");
			   } 
	  }
	  else
	  {
		    if ($scope.regform.$valid) {
						
							$http({
				method : 'POST',
				url : '<?php echo base_url();?>index.php/Registration/registration_data',
				
						headers: {'Content-Type': 'application/x-www-form-urlencoded'},
				//headers: {'Content-Type': 'application/json'},
					//data :{"myformdata" :JSON.stringify({username:$scope.user.username, passwrd:$scope.user.passwrd})}
					data :JSON.stringify({user_first_name:$scope.user.user_first_name, user_last_name:$scope.user.user_last_name,
										  user_mobile_number:$scope.user.user_mobile_number,user_email_id:$scope.user.user_email_id,
										  user_username:$scope.user.user_username,user_password:$scope.user.user_password,
										  discount:0})
					}).success(function(data) {
						 console.log(data);
						 //alert(data);
						 if(data>2)
						 {
							  /* window.location.href="<?php echo base_url();?>index.php/subscription/index/"+data; */
							  window.location.href="<?php echo base_url();?>index.php/stripepayment/directpayment/"+data;
							  
							  
						 }
						 else
						 {
							 $scope.validationError = true;
						 }
						
						

					});
							
							
							
					} 
	  }
			
  }
  
  
  $scope.ShowHide = function () {
                //If DIV is hidden it will be visible and vice versa.
                $scope.validationError = $scope.validationError ? false : true;
            }
  
  
  
  
  
  
});
</script>
</body>
</html>
