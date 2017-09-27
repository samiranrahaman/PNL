
<!DOCTYPE html>
<html>
<head>
 <title>Profit and Loss | Payment Success</title>
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
        <li class="tab active"><a href="<?php echo base_url();?>index.php/login">Sign In</a></li>
		<li class="tab"><a href="<?php echo base_url();?>index.php/registration">Join Us</a></li>        
    </ul>
    <div class="tab-content1" style="min-height: 200px;">
        
    
        <div id="signin-agile">   
		</br></br>
		   <h3>Thank you for your Successful Payment !</h3></br></br>
		   <p><a href="<?php echo base_url();?>index.php/login">Get back to login page</a><p>
		   
          </div>
            
       </div>
    </div>
	
	 
<p class="copyright">Copyright © 2017- All rights reserved -Powered by INUBAAN SOFTWARE.</p>


<script>
var app = angular.module("myApp", []);
app.controller("formCtrl", function($scope,$http) {
  
  $scope.loginformsubmit = function () {
	  // check to make sure the form is completely valid
			if ($scope.loginForm.$valid) {
				//alert($scope.user.username);
				//alert($scope.user.passwrd);
				/*  $http.get('<?php //echo site_url('Login/verify_login')?><?php echo base_url();?>login/verify_login',{username: $scope.user.username,passwrd: $scope.user.passwrd})
					.then(function(response) {
						//$scope.myWelcome = response.data;
						alert(response.data);
					}); */
					
					
					$http({
        method : 'POST',
        url : '<?php echo base_url();?>index.php/login/verify_login',
		
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        //headers: {'Content-Type': 'application/json'},
			//data :{"myformdata" :JSON.stringify({username:$scope.user.username, passwrd:$scope.user.passwrd})}
			data :JSON.stringify({username:$scope.user.username, passwrd:$scope.user.passwrd})
			}).success(function(data) {
				console.log(data);
				 //console.log(data.status);
				 //alert(data.status);
                  if(data.status=='1')
				 {
					 window.location.href="<?php echo base_url();?>index.php/Dashboard";
				 }
				 else
				 {
					 //console.log('sami');
					 $scope.validationError = true;
				 } 
				
				

			});
					
					
					
			}
  }
  
  
  $scope.ShowHide = function () {
                //If DIV is hidden it will be visible and vice versa.
                $scope.validationError = $scope.validationError ? false : true;
            }
  
  
  
  
  
  
});
</script>
<!-- /Forgot Password -->
</body>
</html>


     