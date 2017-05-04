<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="<c:url value="/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" />" rel="stylesheet">
    <!-- toast CSS -->
    <link href="<c:url value="/plugins/bower_components/toast-master/css/jquery.toast.css" />" rel="stylesheet">
    
    <!-- morris CSS -->
    <link href="<c:url value="/plugins/bower_components/morrisjs/morris.css" />" rel="stylesheet">
        
    <!-- chartist CSS -->
    <link href="<c:url value="/plugins/bower_components/chartist-js/dist/chartist.min.css" />" rel="stylesheet">
    <link href="<c:url value="/plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" />" rel="stylesheet">
    <!-- animation CSS -->
    <link href="<c:url value="/css/animate.css" />" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="/css/yan.css" />" rel="stylesheet">
    <!-- color CSS -->
    <link href="<c:url value="/css/default.css" />" rel="stylesheet">
    
    
<![endif]-->
</head>

<body class="fix-header">
    <!-- ============================================================== -->
    <!-- Wrapper -->
    <!-- ============================================================== -->
    <div id="wrapper">
        
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Admin</span></h3>
                </div>
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                        <a href="index.jsp" class="waves-effect"><i class="fa fa-user fa-fw" aria-hidden="true"></i>Welcome</a>
                    </li>
                    <li>
                        <a href="employee_admin/html/record_an_order.jsp" class="waves-effect"><i class="fa fa-circle-thin fa-fw" aria-hidden="true"></i>Record an order</a>
                    </li>
                    <li>
                        <a href="employee_admin/html/add_customer.jsp" class="waves-effect"><i class="fa fa-plus-circle fa-fw" aria-hidden="true"></i>Add customer</a>
                    </li>
                    <li>
                        <a href="employee_admin/html/edit_customer.jsp" class="waves-effect"><i class="fa fa-pencil-square-o fa-fw" aria-hidden="true"></i>Edit customer</a>
                    </li>
                    <li>
                        <a href="employee_admin/html/remove_customer.jsp" class="waves-effect"><i class="fa fa-minus-circle fa-fw" aria-hidden="true"></i>Remove customer</a>
                    </li>
                    <li>
                        <a href="employee_admin/html/create_customer_mailinglist.jsp" class="active" class="waves-effect"><i class="fa fa-list fa-fw" aria-hidden="true"></i>Create customer list</a>
                    </li>
                    <li>
                        <a href="employee_admin/html/create_movie_suggestion_list.jsp" class="waves-effect"><i class="fa fa-list fa-fw" aria-hidden="true"></i>Create movie suggestion</a>
                    </li>

                </ul>
            </div>
            
        </div>
        <!-- ============================================================== -->
        <!-- End Left Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Create Customer Mailing List</h4> </div>
                </div>
                <div>
                <c:forEach items="${rs_array}" var="element" >   
    				<c:forEach items="${element}" var = "item">
    					
    					<c:out  value = "${item}" />
    					<br>
    					
    				</c:forEach>
    			</c:forEach>
                </div>
                <!-- /.row -->
                <!-- .row -->
                <div class="row">
                    <div class="col-md-8 col-xs-12">
                        <div class="white-box">
                             <form action="/FinalProject305/EmployeeMailingListServlet" role="form" class="form-horizontal form-material" method="POST">
                             	<div class="form-group">
                                    <div class="col-sm-12">
                                        <input type="submit" value="Create List" class="btn btn-success">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
            <footer class="footer text-center"> 2017 &copy; NETFLIX </footer>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!--Counter js -->
    <script src="../plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
    <script src="../plugins/bower_components/counterup/jquery.counterup.min.js"></script>
    <!-- chartist chart -->
    <script src="../plugins/bower_components/chartist-js/dist/chartist.min.js"></script>
    <script src="../plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>
    <!-- Sparkline chart JavaScript -->
    <script src="../plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
    <script src="js/dashboard1.js"></script>
</body>

</html>
