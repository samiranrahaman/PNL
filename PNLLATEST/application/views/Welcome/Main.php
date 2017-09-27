<script src="<?php echo base_url();?>css/angular-ui-bootstrap-modal.js"></script>

  <!-- Content Wrapper. Contains page content -->
  <div ng-init='init()'class="content-wrapper" ng-controller="reports">
    <!-- Content Header (Page header) -->

    <!-- Main content -->
    <section class="content">
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs col-md-12">
          <!-- <h3>Welcome to Dashboard, Alix !</h3>-->
       </div>
            
            
				<div class="clearfix"> </div>
					
				 <div class="embed-responsive embed-responsive-16by9">
				 <!-- <iframe  class="embed-responsive-item" src="https://www.youtube.com/embed/p9Fh4ItiyEg"></iframe>-->
				 <!--<iframe width="900" height="600" src="https://www.youtube.com/embed/p9Fh4ItiyEg" frameborder="0" allowfullscreen></iframe>-->
				 <iframe  src="https://www.youtube.com/embed/p9Fh4ItiyEg" frameborder="0" allowfullscreen></iframe>
				</div>
            <div class="row wlcbtmtxt">
             WATCH THIS VIDEO TO <a href="#"> <span class="greenebtn">GET STARTED</span></a>
            </div>
			
		</div>
	
    </section>
    <!-- /.content -->
  </div>
  
  <style>
  .embed-responsive .embed-responsive-item, .embed-responsive embed, .embed-responsive iframe, .embed-responsive object, .embed-responsive video {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    width: 100% !important;
    height: 80% !important;
    border: 0;
}
.embed-responsive-16by9 {
    padding-bottom: 42.3% !important;
}

.row-centered {
    text-align:center;
}
.col-centered {
    display:inline-block;
    float:none;
    /* reset the text-align */
   /* text-align:left;*/
    /* inline-block space fix */
   /* margin-right:-4px;*/
       margin-right: 16%;
}
.item {
    width:100%;
    height:100%;
	/*border:1px solid #cecece;*/
    padding:16px 8px;
	/*background:#ededed;
	background:-webkit-gradient(linear, left top, left bottom,color-stop(0%, #f4f4f4), color-stop(100%, #ededed));
	background:-moz-linear-gradient(top, #f4f4f4 0%, #ededed 100%);
	background:-ms-linear-gradient(top, #f4f4f4 0%, #ededed 100%);*/
}

/* content styles */
.item {
	display:table;
}


  </style>