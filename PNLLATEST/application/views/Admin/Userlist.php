<script src="<?php echo base_url();?>css/angular-ui-bootstrap-modal.js"></script>

  <!-- Content Wrapper. Contains page content -->
  <div ng-init='init()'class="content-wrapper" ng-controller="userlist">
 
    <section class="content">
					    	  
		<div id="page-wrapper">
           <div class="col-md-12 graphs">
		   
		   <div modal="showModalprofile" id="popup_div" class="modal-content" style="display: block;background-color: #fff;">
							      
									<form  id="profileform" name="profileform"  novalidate >
									<div class="modal-header">
										<h4>Edit Profile  </h4>
										
									</div>
									<div class="modal-body"> 
										
										<div class="form-group"  ng-class="{ 'has-error' : profileform.edit_user_first_name.$invalid && !profileform.edit_user_first_name.$pristine }">
											<input type="text" class="form-control1" id="edit_user_first_name" name="edit_user_first_name" ng-model="edit_user_first_name" required >
												<p ng-show="profileform.edit_user_first_name.$invalid && !profileform.edit_user_first_name.$pristine" class="help-block">First Name is required.</p>
										 </div>
										
									</div>
									<div class="modal-body"> 
										
										<div class="form-group"   ng-class="{ 'has-error' : profileform.edit_user_last_name.$invalid && !profileform.edit_user_last_name.$pristine }">
											<input type="text" class="form-control1" id="edit_user_last_name" name="edit_user_last_name" ng-model="edit_user_last_name" required >
												<p ng-show="profileform.edit_user_last_name.$invalid && !profileform.edit_user_last_name.$pristine" class="help-block">Last Name is required.</p>
										 </div>
										
									</div>
									<div class="modal-body"> 
										<div class="form-group" ng-class="{ 'has-error' : profileform.user_status.$invalid && !profileform.user_status.$pristine }">
										Status:<input type="checkbox"  name="user_status" ng-model="user_status" >
										</div>
								    </div>
								   
									<div class="modal-footer">
									  <!--<button class="btn btn-success" ng-disabled="profileform.$invalid" ng-click="ok()">Okay</button>-->
									  <button class="btn btn-success" ng-disabled="profileform.$invalid" ng-click="updateprofile()">Update</button>
									  <button class="btn" ng-click="cancelprofiledit()">Cancel</button>
									</div>
									<input type="hidden" class="form-control1" id="edit_user_interanal_id" name="edit_user_interanal_id" ng-model="edit_user_interanal_id" required >
									
									</form>
						</div>	

						<!--<div class="xs col-md-12">
					       <h3>Your live reports are listed below - View or Edit them under Actions</h3>
				        </div>-->
						 <div class="xs col-md-12">
						   <h3>Active User List</h3>
						   </div>
							
							<div class="clearfix"> </div>
            
				<div class="panel-body no-padding table-responsive" style="display: block;">
				
		  
		         <table class="tablev">
			   <thead>
			   <tr style="background-color: #0f75bc;height: 52px;">
					  <th class="text-l  col-sm-2 ">Name</th>
					   <th class="text-l  col-sm-1 ">Mobile No</th>
						 <th class="text-l  col-sm-2 ">Email</th>
						 <th class="text-l  col-sm-1 ">Username</th>
						 <th class="text-l  col-sm-1 ">Subscription</th>
						  <th class="text-l  col-sm-4 ">Action</th>
						  
					 
					</tr>
			   <thead>
			   
				<tbody>

					<tr ng-repeat="user in users ">
					  <th class="text-l  col-sm-2 ">{{user.user_first_name}} {{user.user_last_name}}</th>
					   <th class="text-l  col-sm-1 ">{{user.user_mobile_number}}</th>
						 <th class="text-l  col-sm-2 ">{{user.user_email_id}}</th>
						 <th class="text-l  col-sm-1 ">{{user.user_username}}</th>
						  <th ng-if="user.subscription=='plan1A'" class="text-l  col-sm-1 ">Basic Monthly</th>
						 <th ng-if="user.subscription=='plan1B'" class="text-l  col-sm-1 ">Basic Yearly</th>
						 <th ng-if="user.subscription=='plan2A'" class="text-l  col-sm-1 ">Professional Monthly</th>
						 <th ng-if="user.subscription=='plan2B'" class="text-l  col-sm-1 ">Professional Yearly</th>
						 <th ng-if="user.subscription=='plan3A'" class="text-l  col-sm-1 ">Business Monthly</th>
						 <th ng-if="user.subscription=='plan3B'" class="text-l  col-sm-1 ">Business Yearly</th>
						 <th ng-if="user.subscription=='affiliate'" class="text-l  col-sm-1 ">Affiliate</th>
						  <th ng-if="!user.subscription" class="text-l  col-sm-1 ">...</th>
						  
					  <th class="col-sm-4 ">		
						<a class="edbtn" style="" href="#popup_div" ng-click="editprofile(user.user_interanal_id);">Edit</a>
						 <button class="dlbtn2" ng-click="delete(user.user_interanal_id)">Delete</button>
						 
					  </th>
					</tr>
					<div class="row " style="border: 1px solid #ecf0f5;padding: 11px 5px 17px 20px;background: #ff99001a;"ng-show="!users.length">No Result Found!</div>

				</tbody>
			  </table>
		        </div>
		   <!-- </div>-->
	</div>
	</div>
 
		
    </section>
    <!-- /.content -->
  </div>
  <script>
var app = angular.module("myApp", ["ui.bootstrap.modal"]);
app.controller("userlist", function($scope,$http,$timeout,$window) {
	
				$http({
						method : 'get',
						url : '<?php echo base_url();?>index.php/admin/getuserlist',
		
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                //data :JSON.stringify({account_name:$scope.store.account_name, apikey:$scope.store.apikey,password:$scope.store.password,url:$scope.store.url})
			     }).success(function(data) {
					// alert(data.status);
				 console.log(data);
                 if(data=='null')
				 {
					 $scope.users =0;
				 }
				 else
				 {
					 $scope.users =data;
				 }
				 
				
			}); 
			
			
				   
			
	$scope.delete = function (str) 
       {
           
		     var deleteUser = $window.confirm('Are you absolutely sure you want to delete?');

		if (deleteUser) {
      
	 // alert(str);
		$http({
        method : 'POST',
				url : '<?php echo base_url();?>index.php/admin/user_delete',
				
						headers: {'Content-Type': 'application/x-www-form-urlencoded'},
						data :JSON.stringify({id:str})
					}).success(function(data) {
						 console.log(data);
						 alert("Delete Successful!"); 
						  window.location.href="<?php echo base_url();?>admin/active_userlist";
						
					});
	  
				} 
			   
       }

$scope.editprofile = function (str) {
	//alert(str);
	  	$http({
						method : 'POST',
						url : '<?php echo base_url();?>index.php/admin/getuser_info',
		
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                data :JSON.stringify({id:str})
			     }).success(function(data) {
				  console.log(data);
                $scope.edit_user_first_name=data[0].user_first_name;
		        $scope.edit_user_interanal_id=data[0].user_interanal_id; 
	            $scope.edit_user_last_name=data[0].user_last_name;
				$scope.user_status=true;
				 
				
			}); 
	  $scope.showModalprofile = true;
  }
	   
$scope.updateprofile=function()
 {
	 //alert($scope.user_status);
	 var status=0;
	 if($scope.user_status==true)
	 {
		 status=1;
	 }
	 //alert(status);
	  $http({
        method : 'POST',
        url : '<?php echo base_url();?>index.php/admin/profileupdate',
		
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
				data :JSON.stringify({edit_user_first_name:$scope.edit_user_first_name,edit_user_interanal_id:$scope.edit_user_interanal_id,
				edit_user_last_name:$scope.edit_user_last_name,edit_user_status:status
				})
			}).success(function(data) {
				 console.log(data);
				 //alert(data);
				 
                   if(data[0].user_interanal_id>0)
 				 {
					  alert("Updated Successful!");
					 // alert(data[0].user_status);
					  if(data[0].user_status>0)
					  {
						   window.location.href="<?php echo base_url();?>admin/active_userlist";
					  }
					  else
					  {
						   window.location.href="<?php echo base_url();?>admin/inactive_userlist";
					  }
					  
				 }
				 else
				 {
					  alert("Update Not Successful!");
				 }
					 
				
			});
	 
 }	
			
			
			
$scope.cancelprofiledit = function() {
  $scope.showModalprofile = false;
  };			
			
			
			
			
			
			
});
  </script>
  