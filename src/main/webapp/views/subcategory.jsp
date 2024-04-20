<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

  </head>

  <body class="light-sidebar-nav">
 
	
  <section id="container">
      <!--header start-->
      <header class="header white-bg">
              <div class="sidebar-toggle-box">
                  <i class="fa fa-bars"></i>
              </div>
            <!--logo start-->
            <a href="index-2.html" class="logo">Panchayat <span>Post</span></a>
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
                      <a  href="${ pageContext.request.contextPath}/admin/dashboard">
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
                      <a class="active" href="${ pageContext.request.contextPath}/admin/category" >
                          <i class="fa fa-tasks"></i>
                          <span>Categories</span>
                      </a>
                  </li>
                <li class="sub-menu">
                      <a href="javascript:;" >
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
                    Add Sub Category
                </a>   
                
                <a href="${pageContext.request.contextPath }/admin/category" class="btn btn-sm btn-success">
                    Category
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

                               <form  action="${pageContext.request.contextPath}/admin/add-subcategory" method="post"  modelAttribute="addsubCategoryData" >
                                    <input id="aaa" type="hidden" value="${categoryId}" name="categoryId">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Subcategory Name</label>
                                        <input type="text" class="form-control" id="exampleInputEmail3" name="subCategoryName" placeholder="SubCategory Name"required>
                                    </div> 
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Priority</label>
                                        <input type="number" class="form-control" id="exampleInputEmail3" name="priority" placeholder="Priority"required>
                                    </div> 
                                    
                                    <div class="form-group" >
                                    <label for="exampleInputEmail1">Status</label>
                                        <select class="form-control"  required="required" name="status">
                                        <option></option>
                                        <option value="true">Active</option>
                                        <option value="false">Inactive</option>
                                       
                                      </select>
                                    </div>
                                    <div class="form-group" >
                                        <label for="exampleInputEmail1">Type</label>
                                            <select class="form-control"  required="required" name="type">
                                            <option></option>
                                            <option value="Normal">Normal</option>
                                            <option value="Special">Special</option>
                                           
                                          </select>
                                        </div>
                                   
                                    <input type="submit">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
</div>


    <!---------------------------------------- Model start ----------------------------------------->

        <!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Upload Images</h5>
          <button type="button" onclick="closeUploadImage()" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">

        <form action="${pageContext.request.contextPath }/admin/subcategoryImages" method="post" enctype="multipart/form-data">
            <input type="hidden" id="imageCategory" name="categoryId">
            <input type="file" class="form-control" name="subcategoryImages">
        
        <div class="modal-footer">
          <button type="button" onclick="closeUploadImage()" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <input type="submit" class="btn btn-primary">
        </div>
    </form>
    </div>

    <div class="card-body">


        <!-- <div class="container mt-5">
           <div class="row">
                 <div class="col-md-4"> -->
                    <!-- <div class="card p-3">
                        <div class="d-flex flex-row mb-3"  > -->
<!--                          
                            <div id="subCategoeyImage" >

                            
                         </div> -->

                         <table id="example1" class="display" style="width:100%">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>image name</th>
                                    <th>img</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                    
                        
                        </table>
                            
                         <!-- </div>
                       </div> -->
                <!-- </div>  -->
                <!-- <div class="col-md-4">
                    <div class="card p-3">
                        <div class="d-flex flex-row mb-3">
                            <img id="subCategoeyImage1" width="100">
                         </div>
                    </div>
                </div>   -->
                 <!-- <div class="col-md-4">
                    <div class="card p-3">
                        <div class="d-flex flex-row mb-3">
                            <img src="${pageContext.request.contextPath }/resources/iii/31052023103705300.PNG" width="100">
                        </div>
                    </div>
                      
                </div>
                <div class="col-md-4">
                    <div class="card p-3">
                        <div class="d-flex flex-row mb-3">
                            <img src="${pageContext.request.contextPath }/resources/iii/31052023103705300.PNG" width="100">
                        </div>
                    </div>
                      
                </div>
                <div class="col-md-4">
                    <div class="card p-3">
                        <div class="d-flex flex-row mb-3">
                            <img src="${pageContext.request.contextPath }/resources/iii/31052023103705300.PNG" width="100">
                        </div>
                    </div>
                      
                </div>
                 -->
              
               
                
            <!-- </div>
        </div> -->
        
        

            <!-- <div class="media">
            <img src="${pageContext.request.contextPath }/views/img/gallery/4.jpg" class="rounded float-start" alt="...">

        </div>
        <div class="media">
            <img src="${pageContext.request.contextPath }/views/img/gallery/4.jpg" class="rounded float-end" alt="...">
        </div> -->
<!-- 
            <li class="online">
                <div class="media">
                    <a href="#" class="">
                        <img alt="" src="${pageContext.request.contextPath }/views/img/gallery/4.jpg" class="mr-4">
                    </a>
                   
            </li>
      -->
           
           
        

    </div>
      </div>
    </div>
  </div>

    <!---------------------------------------- Model end ----------------------------------------->


    <!-- ----------------------------------------Edit Sub Category Page -------------------------------->






    <div class="card-body">
        <!-- <a href="#myModal3" data-toggle="modal" class="btn btn-sm btn-success">
            Add Sub Category
        </a>    -->
<!--         
        <a href="${pageContext.request.contextPath }/admin/category" class="btn btn-sm btn-success">
            Category
        </a>  -->
         <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal3" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Form title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                       <form  action="${pageContext.request.contextPath}/admin/editSubCategory" method="post"  modelAttribute="editSubCategory" >
                           
                            <input id="bbb" type="hidden" name="id">
                            <input id="categoryId1" type="hidden" name="categoryId">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Subcategory Name</label>
                                <input type="text" class="form-control" id="subCategoryName" name="subCategoryName" placeholder="SubCategory Name"required>
                            </div> 
                            <div class="form-group">
                                <label for="exampleInputEmail1">Priority</label>
                                <input type="number" class="form-control" id="priority" name="priority" placeholder="Priority"required>
                            </div> 
                            
                            <div class="form-group" >
                            <label for="exampleInputEmail1">Status</label>
                                <select class="form-control"  required="required" name="status" id="status">
                                <option></option>
                                <option value="true">Active</option>
                                <option value="false">Inactive</option>
                               
                              </select>
                            </div>
                            <div class="form-group" >
                                <label for="exampleInputEmail1">Type</label>
                                    <select class="form-control"  required="required" name="type" id="type">
                                    <option></option>
                                    <option value="Normal">Normal</option>
                                    <option value="Special">Special</option>
                                   
                                  </select>
                                </div>
                           
                            <input type="submit">
                        </form>
                    </div>
                </div>
            </div>
        </div>
</div>

<!-- -------------------------------------end -------------------------------------- -->
<!-- <img style="width: 120px;"> -->

	 <!---------------------------------------- Table start ----------------------------------------->
        	 
        	 
        	 
        	  <table id="example" class="display" style="width:100%">
        <thead>
            <tr>
            	<th>No.</th>
               	<th>Subcategory Name</th>
                <th>Type</th>
                <th>Priority</th>
                <th>Status</th>
                 <th></th>
                <th>Action</th>
                <th></th>
                <th></th> 
      			
            </tr>
        </thead>

    
    </table>
        	
        	 
        	 
        	 <!-- -----------------------------------------Table End --------------------------------------->

          
            

          </section>
      </section>
      <!--main content end-->

     
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
    <!-- <script src="${pageContext.request.contextPath }/views/js/common-scripts.js"></script> -->

    <!--script for this page-->
    <script src="${pageContext.request.contextPath }/views/js/sparkline-chart.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/count.js"></script>

    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.13.1/datatables.min.css"/>
   <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.13.1/datatables.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    <script type="text/javascript">
    	  $(document).ready(function(){

            var categoryId = document.getElementById("aaa").value;

            $.ajax({
                "url": "${pageContext.request.contextPath }/admin/get-subcategory/"+categoryId,  
                "type": "GET",  
                "datatype": "json",
                "success" : function(data){
                    console.log(data);


                    $('#example').DataTable({ 
                        data : data.object,

                        'columns': [
                            {data : function(data, row, full, meta){
                         		return meta.row+1;
                         	}},
                            {data : 'subCategoryName'},
                            {data : 'type'},
                            {data : 'priority'},

                         	{data : 'status',
                            render : function(data){
                                if(data==true){
                                    return '<label class="label label-success"  style="color:black "><b>Active</b></label>';
                                }else{
                                    return '<label class="label label-danger" style="color:black"><b>Inactive<b></lable>';
                                }

                            }}, 
                            {
                         		 data: 'id',
                                 render : function(data, type, full) {
                                   
                                return '<a href="#myModal3" data-toggle="modal" onclick=editSubCategory("'+data+'")><button type="button"  class="btn btn-success">Edit</button></a>';
                              }
                         	},
                         	{
                         		data : 'id',
                                render : function(data, type, full){
                                    return '<a onclick=subCategory("'+data+'")><button type="button"  class="btn btn-danger">Delete</button></a>';
                         		}
                         	},
                             {
                         		data : 'id',
                                render : function(data, type, full){
                                    return '<a ><button type="button" onclick=subCategoeyImage("'+data+'") class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">Upload Image</button></a>';
                         		}
                         	},
                        ]
                    })
                }
            });
    

           
    	  
    	  
    	  });
    </script>

    <script>

        function editSubCategory(data){

            console.log(data);

            $.ajax({
                url : "${pageContext.request.contextPath}/admin/editsubcategory/"+data,
                type : "GET",
                dataType :"json",
                success : function(data){

                    console.log(data.object.categoryId);
                    document.getElementById("bbb").value = data.object.id;
                    document.getElementById("categoryId1").value = data.object.categoryId;
                    document.getElementById("priority").value = data.object.priority;
                    document.getElementById("status").value = data.object.status;
                    document.getElementById("subCategoryName").value = data.object.subCategoryName;
                    document.getElementById("type").value = data.object.type;




                }
            })

        }


        function subCategory(data){

         

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

                        url:'${pageContext.request.contextPath }/admin/deleteSubCategoryId/'+data,
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

        function closeUploadImage(){
            location.reload();
        }

        function subCategoeyImage(data){

            document.getElementById("imageCategory").value = data;


            $.ajax({

                "url": "${pageContext.request.contextPath }/admin/getsubCategoryImages/"+data,  
                "type": "GET",  
                "datatype": "json",
                "success" : function(data){

                   
                    // for(var i=0; i<data.object.length; i++){

                    // console.log(data.object[i].imageName);

                    // //  console.log(i)
                    // var fileName = data.object[i].imageName;
                    console.log(data.object);
                    $('#example1').DataTable({ 
                        data : data.object,

                        'columns': [
                            {data : function(data, row, full, meta){
                         		return meta.row+1;
                         	}},
                            {
                                data : "imageName"
                            },
                            {
                                data : "imageName",
                                render : function(data){
                                    return '<img src="${pageContext.request.contextPath }/resources/iii/'+data+'" style="width: 100px;">'
                                } 
                            },
                            {
                                data : "id",
                                render : function(data){
                                    return '<a onclick=subCategoeyImageDelete("'+data+'")><button type="button"  class="btn btn-danger">Delete</button></a>';
                                }
                            }
                        ]
                
                    })

                
                     
                    //  var abcd = document.createElement("img");
                                         
                    //  abcd.src = "${pageContext.request.contextPath }/resources/iii/"+fileName;
                    //  abcd.style.width = "120px";
                    //  abcd.style.marginLeft = "50px";
                    //  abcd.style.marginBottom="20px";
                    //  document.getElementById("subCategoeyImage").appendChild(abcd);
                     
                     


                    //  document.getElementById("subCategoeyImage").src = "${pageContext.request.contextPath }/resources/iii/31052023103705300.PNG";
                    //  document.getElementById("subCategoeyImage1").src = "${pageContext.request.contextPath }/resources/iii/31052023103705300.PNG";

                    // var reader = new FileReader();
                    // reader.onload = imageIsLoaded;
                    // reader.readAsDataURL(data.object[i].imageName);

                   // document.getElementById("subCategoeyImage").append('<img src=${pageContext.request.contextPath }/resources/iii/'+ data.object[i].imageName+' width=100>')
                    
                  
                   

                    }
                    
                
                


            })

            

        }


        function subCategoeyImageDelete(data){

          

            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!',
                
                }).then((result) => {
                if (result.isConfirmed) {
                    swal.fire({
                    title: "Deleted!",
                    text: "Your row has been deleted.",
                    type: "success",
                    timmer : 3000
                    });
                    $.ajax({

                        url:'${pageContext.request.contextPath }/admin/deleteSubCategoryImg/'+data,
                        type: 'POST',
                        
                        success : function(event){

                            swal.fire({

                                title: "Deleted!",
                                text: "img deleted.",
                                type : "success"

                            })

                        }
                         
                     })
                   
                    
                        location.reload(true);
                }
                })

                
        }


        

    </script>

    

      
  


</html>
