<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.html">

    <title>Panchayat Post</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/views/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/views/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath }/views/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/views/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/views/css/owl.carousel.css" type="text/css">

    <!--right slidebar-->
    <link href="${pageContext.request.contextPath }/views/css/slidebars.css" rel="stylesheet">

    <!-- Custom styles for this template -->

    <link href="${pageContext.request.contextPath }/views/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/views/css/style-responsive.css" rel="stylesheet" />
 <%--      <link href="${pageContext.request.contextPath }/views/assets/advanced-datatable/media/css/demo_page.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/views/assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/views/assets/data-tables/DT_bootstrap.css" />
 --%>
  </head>

  <body class="light-sidebar-nav">

  <section id="container">
      <!--header start-->
      <header class="header white-bg">
              <div class="sidebar-toggle-box">
                  <i class="fa fa-bars"></i>
              </div>
            <!--logo start-->
            <a href="index-2.html" class="logo">Panchayat<span>Post</span></a>
            <!--logo end-->
          
            <div class="top-nav ">
                <!--search & user info start-->
                <ul class="nav pull-right top-menu">
                    
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" src="${ pageContext.request.contextPath }/views/img/avatar1_small.jpg">
                            <span class="username">Jhon Doue</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout dropdown-menu-right">
                            <div class="log-arrow-up"></div>
                            <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                            <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                            <li><a href="#"><i class="fa fa-bell-o"></i> Notification</a></li>
                            <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
                        </ul>
                    </li>
                  
                    <!-- user login dropdown end -->
                </ul>
                <!--search & user info end-->
            </div>
        </header>
      <!--header end-->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                  <li>
                      <a href="${ pageContext.request.contextPath}/admin/dashboard">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="${ pageContext.request.contextPath}/admin/user" >
                          <i class="fa fa-laptop"></i>
                          <span>User</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Subscription</span>
                      </a>
                     
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Slider</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Theme Samples</span>
                      </a>
                  </li>
                    <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Festivals</span>
                      </a>
                  </li>
                    <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Greetings</span>
                      </a>
                  </li>
                    <li class="sub-menu">
                      <a class="active"  href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Categories</span>
                      </a>
                  </li>
                <li class="sub-menu">
                      <a href="${ pageContext.request.contextPath}/admin/category" >
                          <i class="fa fa-tasks"></i>
                          <span>Posts</span>
                      </a>
                  </li>
                 <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Frames</span>
                      </a>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!--state overview start-->
              <div class="row state-overview">
                  <div class="col-lg-3 col-sm-6">
                      <section class="card">
                          <div class="symbol terques">
                              <i class="fa fa-user"></i>
                          </div>
                          <div class="value">
                              <h1 class="count">
                                  0
                              </h1>
                              <p>New Users</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="card">
                          <div class="symbol red">
                              <i class="fa fa-tags"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count2">
                                  0
                              </h1>
                              <p>Sales</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="card">
                          <div class="symbol yellow">
                              <i class="fa fa-shopping-cart"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count3">
                                  0
                              </h1>
                              <p>New Order</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="card">
                          <div class="symbol blue">
                              <i class="fa fa-bar-chart-o"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count4">
                                  0
                              </h1>
                              <p>Total Profit</p>
                          </div>
                      </section>
                  </div>
              </div>
              <!--state overview end-->

 			<div class="card-body">
                              <a href="#myModal1" data-toggle="modal" class="btn btn-sm btn-success">
                                  Add Category
                              </a>   
                              
                               <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal1" class="modal fade">
                                  <div class="modal-dialog">
                                      <div class="modal-content">
                                          <div class="modal-header">
                                              <h5 class="modal-title">Form title</h5>
                                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                  <span aria-hidden="true">&times;</span>
                                              </button>
                                          </div>
                                          <div class="modal-body">

                                             <form  action="${pageContext.request.contextPath}/admin/add-category" method="post"  modelAttribute="addCategoryData" >
                                                  <div class="form-group">
                                                      <label for="exampleInputEmail1">Category Name</label>
                                                      <input type="text" class="form-control" id="exampleInputEmail3" name="categoryName" placeholder="Category Name"required>
                                                  </div> 
                                                  
                                              	<div class="form-group" >
                                              	<label for="exampleInputEmail1">Status</label>
                                              		<select class="form-control"  required="required" name="status">
													  <option></option>
													  <option value="true">Active</option>
													  <option value="false">Inactive</option>
													 
													</select>
                                              	</div>
                                                 
                                                  <input type="submit">
                                              </form>
                                          </div>
                                      </div>
                                  </div>
                              </div>
        	 </div>
        	 
        	 
        	 
        	 
        	 
        	 
        	 
        	 <!---------------------------------------- Table start ----------------------------------------->
        	 
        	 
        	 
        	  <table id="example" class="display" style="width:100%">
        <thead>
            <tr>
            	<th>No.</th>
               	<th>Category Name</th>
                <th>Status</th>
                <th></th>
                <th>Action</th>
                <th></th>
      			
            </tr>
        </thead>

    
    </table>
        	
        	 
        	 
        	 <!-- -----------------------------------------Table End --------------------------------------->
          
            

          </section>
      </section>
      <!--main content end-->
      
      
      			<div class="card-body" id="aaaa">
                             <!--  <a href="#myModal1" data-toggle="modal" class="btn btn-sm btn-success">
                                  Add Category
                              </a>    -->
                              
                               <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal2" class="modal fade">
                                  <div class="modal-dialog">
                                      <div class="modal-content">
                                          <div class="modal-header">
                                              <h5 class="modal-title">Form title</h5>
                                              <button type="button" class="close" data-dismiss="modal1" aria-label="Close">
                                                  <span aria-hidden="true">&times;</span>
                                              </button>
                                          </div>
                                          <div class="modal-body">

                                             <form  action="${pageContext.request.contextPath}/admin/editcategory" method="post"  modelAttribute="editCategoryData" >
                                                <input type="hidden" id="cid1" name="id">
                                                  <div class="form-group">
                                                      <label for="exampleInputEmail1">Category Name</label>
                                                      <input type="text" class="form-control" id="categoryNameId" name="categoryName" placeholder="Category Name"required>
                                                  </div> 
                                                  
                                              	<div class="form-group" >
                                              	<label for="exampleInputEmail1">Status</label>
                                              		<select class="form-control"  required="required" name="status" id="categoryStatus">
													  <option></option>
													  <option value="true">Active</option>
													  <option value="false">Inactive</option>
													 
													</select>
                                              	</div>
                                                 
                                                  <input type="submit">
                                              </form>
                                          </div>
                                      </div>
                                  </div>
                              </div>
        	 </div>
      
     
        

     
  </section>
  </body>
  
      <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath }/views/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/bootstrap.bundle.min.js"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath }/views/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/views/js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/views/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/owl.carousel.js" ></script>
    <script src="${pageContext.request.contextPath }/views/js/jquery.customSelect.min.js" ></script>
    <script src="${pageContext.request.contextPath }/views/js/respond.min.js" ></script>

    <!--right slidebar-->
    <script src="${pageContext.request.contextPath }/views/js/slidebars.min.js"></script>

    <!--common script for all pages-->
<!-- <%--     <script src="${pageContext.request.contextPath }/views/js/common-scripts.js"></script> --%> -->

    <!--script for this page-->
    <script src="${pageContext.request.contextPath }/views/js/sparkline-chart.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/count.js"></script>
    
    <script src="${pageContext.request.contextPath }/views/js/jquery.nicescroll.js" type="text/javascript"></script>
   <!--     <script type="text/javascript" language="javascript" src="${pageContext.request.contextPath }/views/assets/advanced-datatable/media/js/jquery.dataTables.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/views/assets/data-tables/DT_bootstrap.js"></script>
-->

    <!--dynamic table initialization -->
     <!-- <script src="${pageContext.request.contextPath }/views/js/dynamic_table_init.js"></script> -->


    <!--common script for all pages-->
   <!-- <script src="${pageContext.request.contextPath }/views/js/common-scripts.js"></script> --%>
     -->
   
   
    <script type="text/javascript" src="${pageContext.request.contextPath }/views/js/jquery.validate.min.js"></script>

     <!-- <script src="${pageContext.request.contextPath }/views/js/form-validation-script.js"></script>  -->
    
     <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
         <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.13.1/datatables.min.css"/>
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.13.1/datatables.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
<!--     <script type="text/javascript">
    	
    	$.ajax({
    		
    		type : "GET",
    		dataType : "json",
            url : "${pageContext.request.contextPath }/admin/get-category",

            success : function(data){
                console.log(data)
            }
    	})
    	
    </script> -->
    
     <script type="text/javascript">
    	  $(document).ready(function(){
            
            $.ajax({
                "url": "${pageContext.request.contextPath }/admin/getcategory",  
                "type": "GET",  
                "datatype": "json",
                "success" : function(data){
                console.log(data);
                
                    $('#example').DataTable({
                        data : data.object,
                         'columns': [ 
                         	{data : function(data, row, full, meta){
                         		return meta.row+1;
                         	},}, 
                         	{data : 'categoryName'},
                         	{data : 'status',
                            render : function(data){
                                if(data==true){
                                    
                                    return '<label class="label label-success"  style="color:black"><b>Active</b></label>';
                                }else{
                                    return '<label class="label label-danger" style="color:black"><b>Inactive<b></lable>';
                                }

                            }},
                         	{
                         		 data: 'id',
                                 render : function(data, type, full) {
                                   
                                return '<a href="#myModal2" data-toggle="modal" onclick=categorydata("'+data+'") ><button type="button"  class="btn btn-success">Edit</button></a>';
                              }
                         	},
                         	{
                         		data : 'id',
                                render : function(data, type, full){
                                    return '<a onclick=category("'+data+'")><button type="button"  class="btn btn-danger">Delete</button></a>';
                         		}
                         	},
                             {
                         		data : 'id',
                                render : function(data, type, full){
                                    return '<a href="${pageContext.request.contextPath}/admin/category='+data+'/subcategory"><button type="button" class="btn btn-primary">Subcategory</button></a>';
                         		}
                         	}
                        
                         ]
                        });
                  
                   
                }
            })
        })
    </script>  

      

     <script>

        function categorydata(data1){

            console.log(data1)

            $.ajax({
                url : "${pageContext.request.contextPath}/admin/getcategorybyId/"+data1,
                type : "GET",
                dataType :"json",
                success : function(data){
                    console.log(data.object.categoryName)

                    document.getElementById("cid1").value = data1;
                    document.getElementById("categoryNameId").value = data.object.categoryName;
                    document.getElementById("categoryStatus").value = data.object.status;
                }

            })


        }

        function category(data){

            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                if (result.isConfirmed) {

                    $.ajax({

                        url:'${pageContext.request.contextPath }/admin/deletecategory/'+data,
                        type: 'POST',
                         
                     })
                     swal.fire({
                    title: "Deleted!",
                    text: "Your row has been deleted.",
                    type: "success"
                    });
                    
                        location.reload(true);
                }
                })

                
                    
        }
       
    </script> 
 
<!--     <script type="text/javascript">
        $(document).ready(function(){
          
         
                   $.ajax({
                "url": "https://dummyjson.com/products",  
                "type": "GET",  
                "datatype": "json",
                "success" : function(data){
                    $('#example').DataTable({
                        "ordering": false,
                        data : data.products,
                         columns: [  
                         
                          {'data' : 'title'},
                         
                          ]
                          
                        });
                    console.log(data);
                   
                }
            })
                
                 
              })
        
  </script>   -->
  
</html>
