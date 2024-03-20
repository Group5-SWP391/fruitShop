
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"> 
        <!--     Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"> 
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">

        <link rel="stylesheet" href="css/userlist.css" />
        <link rel="stylesheet" href="css/bass.css"/>    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/33f9434037.js" crossorigin="anonymous"></script>
        <style>
            .slider-detail{
                list-style: none;
                max-width: 1200px;
                border-radius: 4px;
                box-shadow: 1px 1px 1px #ccc;
                padding: 10px 40px;
                border: 1px solid #ccc;
            }
            .slider-item{
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .slider-item-left{
                flex: 1;
                max-width: 200px;
                border-right: 1px solid #ccc;
            }
            .slider-item-right{
                width: 50%;
                margin: 12px 100px;
            }
        </style>
    </head>
    <body class="hold-transition skin-blue sidebar-mini"> 
        <div class="row">
           <header class="main-header">

                <!-- Logo -->
                <a href="index2.html" class="logo">
                    <span class="logo-lg"><b>Marketing</b></span>
                </a>

                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <!-- Navbar Right Menu -->
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">




                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="align-items: center;display: flex;margin-right: 60px">
                                    <img src="./img/${sessionScope.acc.accImg}" class="user-image" alt="User Image">
                                    <span class="hidden-xs">${sessionScope.acc.username}</span>
                                </a>
                                <ul class="dropdown-menu"  style="margin-right: 40px">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="./img/${sessionScope.acc.accImg}" class="img-circle" alt="User Image">

                                        <p>
                                            ${sessionScope.acc.username}
                                            
                                        </p>
                                    </li>
                                    <!-- Menu Body -->
                                    <li class="user-body">

                                        <!-- /.row -->
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        

                                        <div class="pull-right">
                                            <a href="logout" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            
                        </ul>
                    </div>

                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="./img/${sessionScope.acc.accImg}" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>${sessionScope.acc.username}</p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>

                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">MAIN NAVIGATION</li>
                        <li class="">
                            <a href="mkt-dashboard">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>

                            </a>

                        </li>

                        <li>
                            <a href="ManagerBlog">
                                <i class="fa fa-th"></i> <span>Manage Post</span>
                                <span class="pull-right-container">
                                    <small class="label pull-right bg-green">new</small>
                                </span>
                            </a>
                        </li>

                        <li>
                            <a href="sliderlist">
                                <i class="fa fa-picture-o" aria-hidden="true"></i> <span>Manage Sliders</span>
                                <span class="pull-right-container">
                                    <small class="label pull-right bg-green">new</small>
                                </span>
                            </a>
                        </li>

                        <li>
                            <a href="feedback">
                                <i class="fa fa-comment" aria-hidden="true"></i> <span>Manage Feedbacks</span>
                                <span class="pull-right-container">
                                    <small class="label pull-right bg-green">new</small>
                                </span>
                            </a>
                        </li>

                        <li>
                            <a href="customerlist">
                                <i class="fa fa-th"></i> <span>Manage Customers</span>
                                <span class="pull-right-container">
                                    <small class="label pull-right bg-green">new</small>
                                </span>
                            </a>
                        </li>





                        <li class="active treeview"><a href="ProductListMKT"><i class="fa fa-product-hunt" aria-hidden="true"></i> <span>Manage Products</span></a></li>

                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>
            <div class="col-10">
                <form action="ProductListMKTAdd" method="post" style="margin:20px;left: 20%;position: absolute;">

                    
                        <li class="slider-item">
                            <span class="slider-item-left">Name</span>
                            <span class="slider-item-right"><input type="text"  value="" name="name"></span>
                        </li>
                        <li class="slider-item">
                            <span class="slider-item-left">Description</span>
                            <span class="slider-item-right">
                                <textarea rows="4" cols="22" name="description"></textarea>
                            </span>
                        </li>

                        <li class="slider-item">
                            <span class="slider-item-left">Category</span>
                            <span class="slider-item-right">
                                <select class="form-control" name="category">
                                    <c:forEach items="${category}" var="c">
                  <option value="${c.cateID}" ${(c.cateID==cate) ? "selected" :""}>
                    ${c.cateName}</option>
                </c:forEach>
                                </select>
                        </li>
                        <li class="slider-item">
                            <span class="slider-item-left">Image</span>
                            <span class="slider-item-right">
                                <input type="file" id="uploadInput" accept="image/*" onchange="previewImage(event)" name="img" value="">
                                <img id="preview" style="width: 50%; margin-top: 20px;" src="">
                            </span>
                        </li>

                        <li class="slider-item">



                            <span class="slider-item-left">Status</span>
                            <a class="slider-item-right" onclick="toggleStatus(this, document.getElementById('statusInput'))" style="align-items: center;height: 30px;display: flex;"><span class="label label-danger">Hided</span></a>
                            <input type="hidden" name="status" id="statusInput" value="0"/>

                        </li>
                        <li class="slider-item">
                            <span class="slider-item-left">Import Price</span>
                            <span class="slider-item-right"><input type="text"  value="" name="ip"></span>
                        </li>
                        <li class="slider-item">
                            <span class="slider-item-left">Root Price</span>
                            <span class="slider-item-right"><input type="text"  value="" name="rp"></span>
                        </li>

                        <li class="slider-item">
                            <span class="slider-item-left">Sell Price</span>
                            <span class="slider-item-right"><input type="text"  value="" name="sp"></span>
                        </li>
                        <li class="slider-item">
                            <span class="slider-item-left">Quantity</span>
                            <span class="slider-item-right"><input type="text" value="" name="quantity"></span>
                        </li>
                        <button type="submit" class="btn btn-primary" style="background-color: var(--primary-color);margin: 30px 76px;">Add</button>
                    </ul>

                </form>
            </div>


        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-U9Yi14bGYPMjYfJAZGuh6o3JODvw/+T2BE6ZU7izjKT1VaVZfU9R8IBqweNkOF1d" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


        <script>
                                    function previewImage(event) {
                                        var input = event.target;
                                        var preview = document.getElementById('preview');

                                        var reader = new FileReader();

                                        reader.onload = function () {
                                            preview.src = reader.result;
                                        };

                                        reader.readAsDataURL(input.files[0]);
                                    }
                                    function toggleStatus(element, input) {
                                        var label = element.querySelector('.label');
                                        if (label.classList.contains('label-success')) {
                                            label.textContent = 'Hide';
                                            label.classList.remove('label-success');
                                            label.classList.add('label-danger');
                                            input.value = '0';
                                        } else {
                                            label.textContent = 'Show';
                                            label.classList.remove('label-danger');
                                            label.classList.add('label-success');
                                            input.value = '1';
                                        }
                                    }

                                    function toggleTreeView(element) {
                                        var treeviewMenu = element.nextElementSibling;
                                        var angleIcon = element.querySelector('.fa-angle-left');
                                        treeviewMenu.classList.toggle('active');
                                        angleIcon.classList.toggle('rotate-icon');
                                    }
                                    function submitForm() {
                                        document.getElementById("fStatus").submit();
                                    }


        </script>  

    </body>
</html>
