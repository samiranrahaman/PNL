<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        
        <div class="pull-left info">
          
          <!-- <a href="#"><i class="fa fa-circle text-success"></i> Online</a> -->
        </div>
        <br/>
        <br/>
      </div>
      <!-- search form -->
      <!-- <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form> -->
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
     
			 <li class="active treeview">

  			  <a href="#">
  				<i class="fa fa-dashboard"></i> <span>Revenue Advizer</span> <i class="fa fa-angle-left pull-right"></i>
  			  </a>
			
  			  <ul class="treeview-menu">
			   <li><a href="<?php echo base_url();?>admin/dashboard"><i class="fa fa-dashboard "></i>Dashboard</a></li>
			   <!--<li><a href="<?php echo base_url();?>admin/userlist"><i class="fa fa-dashboard "></i>Users List</a></li>-->
			   <li class="treeview">
				  <a href="#">
					<i class="fa fa-dashboard"></i> <span>Users List</span> <i class="fa fa-angle-left pull-right"></i>
				  </a>
  			    <ul class="treeview-menu">
			     <li><a href="<?php echo base_url();?>admin/active_userlist"><i class="fa fa-dashboard "></i>Active Users</a></li>
				 <li><a href="<?php echo base_url();?>admin/inactive_userlist"><i class="fa fa-dashboard "></i>InActive Users</a></li>
				</ul>
				</li>
			   <li><a href="<?php echo base_url();?>admin/dashboard"><i class="fa fa-dashboard "></i>Subscription List</a></li>
			   
			   </ul> 	
			 </li>
		</ul>
    </section>
    <!-- /.sidebar -->
  </aside>
