<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<div id="gtco-started" ng-app="myApp" ng-controller="formCtrl">
		<div class="gtco-container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2 class="text-uppercase">Members Area</h2>                    
				</div>
			</div>
			<div class="row animate-box">
				<div class="col-md-12">
					<form  id="loginForm" name="loginForm" class="form-inline" ng-submit="loginformsubmit()" novalidate>
						<div class="col-md-4 col-sm-4">
							<!--<div class="form-group">
								<label for="email" class="sr-only">Email</label>
								<input type="email" class="form-control" id="email" placeholder="Email">
							</div>-->
							<div class="form-group"  ng-class="{ 'has-error' : loginForm.username.$invalid && !loginForm.username.$pristine }">
							<input type="text" class="form-control" placeholder="User Name" id="username" name="username" ng-model="user.username" required >
								<p ng-show="loginForm.username.$invalid && !loginForm.username.$pristine" class="help-block">Username is required.</p>
							
						  </div>
						</div>
						<div class="col-md-4 col-sm-4">
							<!--<div class="form-group">
								<label for="password" class="sr-only">Password</label>
								<input type="password" class="form-control" id="password" placeholder="Password">
							</div>-->
							<div class="form-group has-feedback" ng-class="{ 'has-error' : loginForm.passwrd.$invalid && !loginForm.passwrd.$pristine }">
							<input type="password" class="form-control" placeholder="Password" id="passwrd" name="passwrd" ng-model="user.passwrd" required>    
							<p ng-show="loginForm.passwrd.$invalid && !loginForm.passwrd.$pristine" class="help-block">Passwrd is required.</p>
							
						  </div>
						</div>
						<div class="col-md-4 col-sm-4">
							<!--<button type="submit" class="btn btn-default btn-block">Login</button>-->
							 <button type="submit" class="sign-in btn btn-primary" ng-disabled="loginForm.$invalid">Sign In</button>
				
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
var app = angular.module("myApp", []);
app.controller("formCtrl", function($scope,$http) {
  
  $scope.loginformsubmit = function () {
	  // check to make sure the form is completely valid
			if ($scope.loginForm.$valid) {
				
					$http({
        method : 'POST',
        url : '<?php echo base_url();?>index.php/login/verify_login',
		
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                data :JSON.stringify({username:$scope.user.username, passwrd:$scope.user.passwrd})
			}).success(function(data) {
				console.log(data);
				  if(data.status=='1')
				 {
					 window.location.href="<?php echo base_url();?>index.php/Dashboard";
				 }
				 else
				 {
					
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
                        <!--<li><a href="<?php echo base_url();?>">Blog</a></li>-->
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
                        <!--<li><a href="<?php echo base_url();?>termandcondition">Terms and Conditions</a></li>-->
						<li><a download href="<?php echo base_url();?>TermsofUse.pdf">Terms and Conditions</a></li>
						<li><a download href="<?php echo base_url();?>PrivacyPolicy.pdf">Privacy Policy</a></li>
						
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
	<script src="layout/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="layout/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="layout/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="layout/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="layout/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="layout/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="layout/js/jquery.magnific-popup.min.js"></script>
	<script src="layout/js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="layout/js/main.js"></script>

	</body>
</html>