<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_new_data.aspx.cs" Inherits="Emlak5.add_new_data" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="ad/img/logo/logo.png" rel="icon">
  <title>RuangAdmin - Form Basics</title>
  <link href="ad/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="ad/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="ad/css/ruang-admin.min.css" rel="stylesheet">
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

       <div id="success" runat="server" class="alert alert-success alert-dismissible" role="alert" style="margin-left:5px; margin-right:5px;">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
        Data added succesfully!
        </div>
          
        <div id="fail" runat="server" class="alert alert-danger alert-dismissible" role="alert" style="margin-left:5px; margin-right:5px;">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
        Something went wrong!
        </div>

          <div class="row" style="justify-content: center; align-items: center;" >
            <div class="col-lg-8" >

              <div class="card mb-8" >
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Add New Property</h6>
                </div>
                <div class="card-body">
                  <form runat="server">
                    
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label" for="exampleFormControlSelect1">Category</label>
                        <asp:DropDownList aria-required="true" required="required" class="col-sm-9" ID="addCategory" runat="server">
                            <asp:ListItem selected></asp:ListItem>
                            <asp:ListItem >Flat</asp:ListItem>
                            <asp:ListItem>Commercial</asp:ListItem>
                            <asp:ListItem>Apartment</asp:ListItem>
                            <asp:ListItem >House</asp:ListItem>
                            <asp:ListItem>Villa</asp:ListItem>
                            <asp:ListItem>Duplex</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label" for="exampleFormControlSelect1">Agent</label>
                        
                        <asp:DropDownList aria-required="true" required="required" class="col-sm-9" ID="addAgent" runat="server">
                            <asp:ListItem selected></asp:ListItem>
                            <asp:ListItem>Ali Başak</asp:ListItem>
                            <asp:ListItem>Nazlı Sudan</asp:ListItem>
                            <asp:ListItem>Alper Soyasız</asp:ListItem>
                            <asp:ListItem>Görkem Kara</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label" for="exampleFormControlSelect1">Situation</label>
                        
                        <asp:DropDownList aria-required="true" required="required" class="col-sm-9" ID="addSituation" runat="server">
                            <asp:ListItem selected></asp:ListItem>
                            <asp:ListItem >On Sale (2)</asp:ListItem>
                            <asp:ListItem>Sold Out (0)</asp:ListItem>
                            <asp:ListItem>For Rent (1)</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group row">
                      <label for="inputEmail3" class="col-sm-3 col-form-label">City</label>
                      <div class="col-sm-9">
                        <asp:TextBox ID="addCity" runat="server" aria-required="true" type="text" class="form-control" required="required"></asp:TextBox>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="inputEmail3" class="col-sm-3 col-form-label">Address</label>
                      <div class="col-sm-9">
                        <asp:TextBox ID="addAddress" runat="server" aria-required="true" type="text" class="form-control" required="required"></asp:TextBox>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="inputEmail3" class="col-sm-3 col-form-label">Price</label>
                      <div class="col-sm-9">
                        <asp:TextBox ID="addPrice" runat="server" aria-required="true" type="number" class="form-control" required="required"></asp:TextBox>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="inputEmail3" class="col-sm-3 col-form-label">Square Meter</label>
                      <div class="col-sm-9">
                        <asp:TextBox ID="addSqMeter" runat="server" aria-required="true" type="number" class="form-control" required="required"></asp:TextBox>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="inputEmail3" class="col-sm-3 col-form-label">Number of Floor</label>
                      <div class="col-sm-9">
                        <asp:TextBox ID="addNumFloor" runat="server" aria-required="true" type="number" class="form-control" required="required"></asp:TextBox>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="inputEmail3" class="col-sm-3 col-form-label">Floor</label>
                      <div class="col-sm-9">
                        <asp:TextBox ID="addFloor" runat="server" aria-required="true" type="number" class="form-control" required="required"></asp:TextBox>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="inputEmail3" class="col-sm-3 col-form-label">Bedroom</label>
                      <div class="col-sm-9">
                        <asp:TextBox ID="addBedroom" runat="server" aria-required="true" type="number" class="form-control" required="required"></asp:TextBox>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="inputEmail3" class="col-sm-3 col-form-label">Bathroom</label>
                      <div class="col-sm-9">
                        <asp:TextBox ID="addBathroom" runat="server" aria-required="true" type="number" class="form-control" required="required"></asp:TextBox>
                      </div>
                    </div>

                    <div class="form-group row">
                      <div class="col-sm-3">Options</div>
                      <div class="col-sm-9">
                          <asp:CheckBox  ID="addGarage"  runat="server" />
                          <label for="addGarage">Garage</label>
                      <br>
                        
                          <asp:CheckBox  ID="addBalcony"  runat="server"/>
                          <label for="addBalcony">Balcony</label>
                      <br>
                      
                          <asp:CheckBox  ID="addGarden"  runat="server"/>
                          <label for="addGarden">Garden</label>
                      <br>
                      
                          <asp:CheckBox  ID="addAirCon"  runat="server"/>
                          <label for="addAirCon">Air Condition</label>
                      
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="inputEmail3" class="col-sm-3 col-form-label">Name of Image File</label>
                      <div class="col-sm-9">
                        <asp:TextBox ID="addImage" runat="server" aria-required="true" type="text" class="form-control" required="required"></asp:TextBox>
                      </div>
                    </div>
                    <br><br>
                    <asp:Button ID="newDataSubmit" class="btn btn-primary" runat="server" OnClick="Button1_ClickAddNewData" Text="Submit" /><br>
                  </form>
                </div>
              </div>
              <br><br>
             


              




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

        </div>
        <!---Container Fluid-->
      </div>
      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>copyright &copy; <script> document.write(new Date().getFullYear()); </script> - developed by
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

</body>

</html>
