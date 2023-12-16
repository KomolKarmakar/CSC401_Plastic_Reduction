<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>EcoMate</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../../vendors/feather/feather.css">
  <link rel="stylesheet" href="../../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../../css/vertical-layout-light/style.css">
  <link rel="stylesheet" href="path-to/node_modules/bootstrap-table/dist/bootstrap-table.min.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/favicon.png" />
  <link rel="stylesheet" href="path-to/node_modules/perfect-scrollbar/dist/css/perfect-scrollbar.min.css" />

</head>

<body>
  <div class="container-scroller">

    <!-- Navbar Partial -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
               <!-- <a class="navbar-brand brand-logo mr-5" href="index.html"><img src="images/logo.svg" class="mr-2" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/logo-mini.svg" alt="logo"/></a> -->
        <h2 style="color: green;" >EcoMate</h2>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
        <ul class="navbar-nav mr-lg-2">
          <li class="nav-item nav-search d-none d-lg-block">
            <div class="input-group">
              <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                <span class="input-group-text" id="search">
                  <i class="icon-search"></i>
                </span>
              </div>
              <input type="text" class="form-control" id="navbar-search-input" placeholder="Search now" aria-label="search" aria-describedby="search">
            </div>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="icon-bell mx-0"></i>
              <span class="count"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-success">
                    <i class="ti-info-alt mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-normal">Application Error</h6>
                  <p class="font-weight-light small-text mb-0 text-muted">
                    Just now
                  </p>
                </div>
              </a>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-warning">
                    <i class="ti-settings mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-normal">Settings</h6>
                  <p class="font-weight-light small-text mb-0 text-muted">
                    Private message
                  </p>
                </div>
              </a>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-info">
                    <i class="ti-user mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-normal">New user registration</h6>
                  <p class="font-weight-light small-text mb-0 text-muted">
                    2 days ago
                  </p>
                </div>
              </a>
            </div>
          </li>
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="images/faces/face28.jpg" alt="profile"/>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item">
                <i class="ti-settings text-primary"></i>
                Settings
              </a>
              <a class="dropdown-item">
                <i class="ti-power-off text-primary"></i>
                Logout
              </a>
            </div>
          </li>
          
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav>
    <!-- /Navbar Partial -->

    <div class="container-fluid page-body-wrapper">


      <!-- Sidebar Partial -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">

          <li class="nav-item">
            <a class="nav-link" href="{{ route('welcome') }}">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title">Home</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ route('userCharts') }}">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title">Analytics</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="{{ route('camp') }}">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title">Campaign</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ route('faq') }}">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title">Customer Service</span>
            </a>
          </li>
     
        </ul>
      </nav>
      <!-- /Sidebar Partial -->

      <!-- Main Panel --> 
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="table-sorter-wrapper">
            <h3> Users </h3>
            <table id="userTable" class="table table-striped table-hover">
              <thead>
                <tr>
                  <th class="sortStyle">ID</th>
                  <th class="sortStyle">First Name</th>
                  <th class="sortStyle">Last Name</th>
                  <th class="sortStyle">Email</th>
                  <th class="sortStyle">DOB</th>
                  <th class="sortStyle">Street</th>
                  <th class="sortStyle">City</th>
                  <th class="sortStyle">State</th>
                  <th class="sortStyle">Zip Code</th>
                </tr>
              </thead>

              <tbody>
                @foreach ($user as $data)
                <tr>
                  <th class="sortStyle">{{$data->userID}}</th>
                  <th class="sortStyle">{{$data->userFirstName}}</th>
                  <th class="sortStyle">{{$data->userLastName}}</th>
                  <th class="sortStyle">{{$data->email}}</th>
                  <th class="sortStyle">{{$data->dob}}</th>
                  <th class="sortStyle">{{$data->street}}</th>
                  <th class="sortStyle">{{$data->city}}</th>
                  <th class="sortStyle">{{$data->state}}</th>
                  <th class="sortStyle">{{$data->zipCode}}</th>
                </tr>
                @endforeach
              </tbody>
            </table>

          <div> <p>    </p> </div>

            <h3> Employees </h3>
            <table id="employeeTable" class="table table-striped table-hover table-responsive">
              <thead>
                <tr>
                  <th class="sortStyle">ID</th>
                  <th class="sortStyle">First Name</th>
                  <th class="sortStyle">Last Name</th>
                  <th class="sortStyle">Email</th>
                  <th class="sortStyle">DOB</th>
                  <th class="sortStyle">Street</th>
                  <th class="sortStyle">City</th>
                  <th class="sortStyle">State</th>
                  <th class="sortStyle">Zip Code</th>
                  <th class="sortStyle">Designation</th>
                  <th class="sortStyle">Salary</th>
                </tr>
              </thead>

              <tbody>
                @foreach ($emp as $data)
                <tr>
                  <th class="sortStyle">{{$data->employeeID}}</th>
                  <th class="sortStyle">{{$data->employeeFirstName}}</th>
                  <th class="sortStyle">{{$data->employeeLastName}}</th>
                  <th class="sortStyle">{{$data->email}}</th>
                  <th class="sortStyle">{{$data->dateOfBirth}}</th>
                  <th class="sortStyle">{{$data->street}}</th>
                  <th class="sortStyle">{{$data->city}}</th>
                  <th class="sortStyle">{{$data->state}}</th>
                  <th class="sortStyle">{{$data->zipCode}}</th>
                  <th class="sortStyle">{{$data->designation}}</th>
                  <th class="sortStyle">{{$data->salary}}</th>
                </tr>
                @endforeach
              </tbody>
            </table>

            <hr>
            
            <div class="row">
            <div class="col-md-12 grid-margin stretch-card">

              <form id="add-user-form" action="#">
                <div>
                  <h3> Add User </h3>
                  <section>
                    <div class="form-group">
                      <label for="inputFname">First Name</label>
                      <input type="text" class="form-control" id="inputFname" placeholder="Enter First Name">
                    </div>
                    <div class="form-group">
                      <label for="inputLname">Last Name</label>
                      <input type="text" class="form-control" id="inputLname" placeholder="Enter LastName">
                    </div>
                    <div class="form-group">
                      <label for="inputEmail">Email address</label>
                      <input type="email" class="form-control" id="inputEmail1" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                      <label for="inputDOB">Date of Birth</label>
                      <input type="date" class="form-control" id="inputDOB" placeholder="Enter Date of Birth">
                    </div>
                    <div class="form-group">
                      <label for="inputStreet">Street</label>
                      <input type="text" class="form-control" id="inputStreet" placeholder="Enter Street">
                    </div>
                    <div class="form-group">
                      <label for="inputCity">City</label>
                      <input type="text" class="form-control" id="inputCity" placeholder="Enter City">
                    </div>
                    <div class="form-group">
                      <label for="inputState">State</label>
                      <input type="emtextail" class="form-control" id="inputEmail1" placeholder="Enter State">
                    </div>
                    <div class="form-group">
                      <label for="inputZip">Zip Code</label>
                      <input type="number" class="form-control" id="inputZip" placeholder="Enter Zip Code">
                    </div>
                    
                    
                    

                    <a href=""> <button type="button" class="btn btn-primary">Submit</button> </a>
                      

                  </section>
                </div>
              </form>

              
            </div>
            </div>


        </div>
      </div>
      <!-- /Main Panel -->

    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="../../vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="../../vendors/chart.js/Chart.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/template.js"></script>
  <script src="../../js/settings.js"></script>
  <script src="../../js/todolist.js"></script>
  <script src="path-to/js/jq.tablesort.js"></script>
  <script src="path-to/node_modules/jquery-steps/build/jquery.steps.min.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="../../js/chart.js"></script>
  <script>
    const ctx = document.getElementById('userGrowthChart');
    const ctx2 = document.getElementById('userCountryChart');
    const ctx3 = document.getElementById('userGenderChart');


    new Chart(ctx, {

      type: 'line',
      data: {
        labels: ['July', 'August', 'September', 'October', 'November', 'December'],
        datasets: [{
          label: 'Users gained per month',
          data: [12, 19, 3, 5, 2, 3],
          borderWidth: 1,
          fill: false,
          borderColor: 'rgb(75, 192, 192)'
        }]
      },
      options: {

        scales: {
          y: {
            beginAtZero: true
          }
        }
        
      }
    }

    
    );

    new Chart(ctx2, {
      type: 'pie',
      data: {
        labels: ['United States', 'Bangladesh', 'India', 'China', 'Canada', 'Brazil'],
        datasets: [{
          label: 'User Demographics',
          data: [128, 159, 83, 95, 27, 68],
          borderWidth: 1,
          fill: true,
          backgroundColor: [
      'rgb(255, 99, 132)',
      'rgb(54, 162, 235)',
      'rgb(255, 205, 86)',
      'rgb(24, 70, 143)',
      'rgb(22, 222, 212)',
      'rgb(217, 83, 11)'
    ],
        }]
      },
      options: {
        scales: {
          y: {
            beginAtZero: true
          }
        }
        
      }
    });

    new Chart(ctx3, {
      type: 'pie',
      data: {
        labels: ["Male", "Female", "Other"],
        datasets: [{
          label: 'User Gender',
          data: [200, 178, 58],
          borderWidth: 1,
          fill: true,
          backgroundColor: [
      'rgb(255, 99, 132)',
      'rgb(54, 162, 235)',
      'rgb(255, 205, 86)'
    ]
        }]
      },
      options: {
        scales: {
          y: {
            beginAtZero: true
          }
        }
        
      }

    });



  </script>
  <!-- End custom js for this page-->
</body>

</html>
