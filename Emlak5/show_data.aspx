<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show_data.aspx.cs" Inherits="Emlak5.show_data" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="ad/img/logo/logo.png" rel="icon">
  <title>RuangAdmin - DataTables</title>
  <link href="ad/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="ad/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="ad/css/ruang-admin.min.css" rel="stylesheet">
  <link href="ad/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>

<body id="page-top">
  <div id="wrapper">
    <!-- Sidebar -->
    <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="show_data.aspx">
        <div class="sidebar-brand-icon">
          <img src="ad/img/logo/logo2.png">
        </div>
        <div class="sidebar-brand-text mx-3">RuangAdmin</div>
      </a>
      <hr class="sidebar-divider my-0">
      <li class="nav-item">
        <a class="nav-link" href="show_data.aspx">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Show Data</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="add_new_data.aspx">
          <i class="fab fa-fw fa-wpforms"></i>
          <span>Add New Data</span>
        </a>
        
      </li>
      
      <hr class="sidebar-divider">
      
      
      
    </ul>
    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <!-- TopBar -->
        <nav class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top">
          <button id="sidebarToggleTop" class="btn btn-link rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>
          <ul class="navbar-nav ml-auto">
            
            
            
           
            <div class="topbar-divider d-none d-sm-block"></div>
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <span class="ml-2 d-none d-lg-inline text-white small">Alparslan İdris Arslan</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                
                <a class="dropdown-item" href="javascript:void(0);" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>
          </ul>
        </nav>
        <!-- Topbar -->
        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
         

          <!-- Row -->
          <div class="row">
            <!-- Datatables -->
            
            <!-- DataTable with Hover -->
            <div class="col-lg-12">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Properties</h6>
                </div>
                <div class="table-responsive p-3">
                    <asp:Panel ID="Panel1" runat="server">
                        <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                            <thead class="thead-light">
                              <tr>
                                <th>Action</th>
                                <th>Id</th>
                                <th>Category Id</th>
                                <th>Agent Id</th>
                                <th>Situation</th>
                                <th>City</th>
                                <th>Address</th>
                                <th>Price</th>
                                <th>Square Meter</th>
                                <th>Number of Floor</th>
                                <th>Floor</th>
                                <th>Bedroom</th>
                                <th>Bathroom</th>
                                <th>Garage</th>
                                <th>Balcony</th>
                                <th>Garden</th>
                                <th>Air Condition</th>
                                <th>Image</th>
                                <th>Date</th>
                              </tr>
                            </thead>
                    
                            <tbody>
                                <asp:Repeater ID="RepeaterShowData" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td ><a href="show_data.aspx?property_id=<%#Eval("property_id") %>&veri=sil" style="color: red;">DEL</a>/<a href="edit_data.aspx?property_id=<%#Eval("property_id") %>&veri=duzenle" style="color: blue;">EDIT</a></td>
                                            <td><%#Eval("property_id") %></td>
                                            <td><%#Eval("category_id") %></td>
                                            <td><%#Eval("agent_id") %></td>
                                            <td><%#Eval("onSale") %></td>
                                            <td><%#Eval("city") %></td>
                                            <td><%#Eval("address") %></td>
                                            <td><%#Eval("price") %></td>
                                            <td><%#Eval("square_meter") %></td>
                                            <td><%#Eval("number_of_floor") %></td>
                                            <td><%#Eval("floor") %></td>
                                            <td><%#Eval("bedroom") %></td>
                                            <td><%#Eval("bathroom") %></td>
                                            <td><%#Eval("garage") %></td>
                                            <td><%#Eval("balcony") %></td>
                                            <td><%#Eval("garden") %></td>
                                            <td><%#Eval("air_condition") %></td>
                                            <td><%#Eval("image") %></td>
                                            <td><%#Eval("date") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                          </table>
                    </asp:Panel>
                </div>
              </div>
            </div>
          </div>
          <!--Row-->

          <!-- Modal Logout -->
          <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLogout"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabelLogout">Warning</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <p>Are you sure you want to logout?</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Cancel</button>
                  <a href="signin.aspx" class="btn btn-primary">Logout</a>
                </div>
              </div>
            </div>
          </div>


          <!-- Modal Delete -->
          <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
            aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalCenterTitle">Warning</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  Are you sure want to delete this data?
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Cancel</button>
                  <button type="button" class="btn btn-danger">Delete</button>
                </div>
              </div>
            </div>
          </div>

          <!-- Modal Edit -->
          <div class="modal fade" id="editModal" tabindex="-1" role="dialog"
            aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalCenterTitle">Warning</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  Are you sure want to edit this data?
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Cancel</button>
                  <button type="button" class="btn btn-warning">Edit</button>
                </div>
              </div>
            </div>
          </div>

        </div>
        <!---Container Fluid-->
      </div>

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; <script> document.write(new Date().getFullYear()); </script> - Developed By
              <b><a href="https://indrijunanda.gitlab.io/" target="_blank">Alparslan İdris Arslan</a></b>
            </span>
          </div>
        </div>
      </footer>
      <!-- Footer -->
    </div>
  </div>

  <!-- Scroll to top -->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <script src="ad/vendor/jquery/jquery.min.js"></script>
  <script src="ad/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="ad/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="ad/js/ruang-admin.min.js"></script>
  <!-- Page level plugins -->
  <script src="ad/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="ad/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script>
    $(document).ready(function () {
      $('#dataTable').DataTable(); // ID From dataTable 
      $('#dataTableHover').DataTable(); // ID From dataTable with Hover
    });
  </script>

</body>

</html>
