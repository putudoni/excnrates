<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Exchange Rates</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="vendors/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="vendors/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <a href="../../index2.html" class="navbar-brand">Exchange Rates</a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
          </ul>
        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>
  <!-- Full Width Column -->
  <div class="content-wrapper">
    <div class="container">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          &nbsp;
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
        
        <div class="box box-default">
          <div class="box-header with-border">
            <h3 class="box-title">Top Currencies</h3>
          </div>
          <div class="box-body">
            
            <div class="box-body table-responsive">
              <table class="table table-bordered">
                <tr>
                  <th>Convert From</th>
                  <th>Convert To</th>
                  <th>Exchange Rate</th>
                </tr>
                <c:forEach var="row" items="${result}">
                <tr>
                  <td><img src="https://www.countryflags.io/${row.countryCode}/flat/32.png"> ${row.currencyCode} </td>
                  <td><img src="https://www.countryflags.io/id/flat/32.png"> IDR </td>
                  <td>
						<fmt:setLocale value="id_ID"/>
						<fmt:formatNumber type="currency" currencySymbol="Rp. "  value="${row.rate}"/>
				  </td>
                </tr>
                </c:forEach>
              </table>
            </div>

          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </section>
      <!-- /.content -->
    </div>
    <!-- /.container -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="container">
      <strong>Copyright &copy; 2019 Putu Ngurah Wigadoni.</strong> All rights reserved.
    </div>
    <!-- /.container -->
  </footer>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="vendors/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="vendors/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="js/demo.js"></script>
</body>
</html>
