<?php
session_start();
if(isset($_SESSION['username']) && (!isset($_SESSION['key']))){
   header('location:account.php?q=1');
}
else if(isset($_SESSION['username']) && isset($_SESSION['key']) && $_SESSION['key'] == '54585c506829293a2d4c3b68543b316e2e7a2d277858545a36362e5f39'){
   header('location:dash.php?q=0');
}
else{}
?>
<!DOCTYPE>
<html>
<head>
<link rel="icon" href="favicon.ico" type="image/icon" sizes="16x16">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
  <link href="./assets/css/style1.css" rel="stylesheet" type="text/css" media="all" />
  <link href="./assets/css/style2.css" rel="stylesheet" type="text/css" />
  <link href="./assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
  <link rel="stylesheet" href="./assets/css/jquery-ui.css" />
  <script src="./assets/js/jquery.min.js"></script>
  <script src="./assets/js/easyResponsiveTabs.js" type="text/javascript"></script>

    <link  rel="stylesheet" href="css/bootstrap.min.css"/>
    <script src="js/bootstrap.min.js"  type="text/javascript"></script>
  <script type="application/x-javascript">
      addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
	</script>
  <script type="text/javascript">
    $(document).ready(function () {
      $("#horizontalTab").easyResponsiveTabs({
        type: "default",
        width: "auto",
        fit: true,
      });
    });
  </script>
  <script>
    addEventListener(
      "load",
      function () {
        setTimeout(hideURLbar, 0);
      },
      false
    );
    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
<?php
if (@$_GET['w']) {
    echo '<script>alert("' . @$_GET['w'] . '");</script>';
}
?>

<style>
    .error {
    color: #483333;
    padding: 10px;
    background: #ffbcbc;
    border: #efb0b0 1px solid;
    border-radius: 3px;
    margin: 0 auto;
    margin-bottom: 20px;
    box-sizing: border-box;
    }

    .success {
        color: #483333;
        padding: 10px 20px;
        background: #cff9b5;
        border: #bce4a3 1px solid;
        border-radius: 3px;
        margin: 0 auto;
        margin-bottom: 20px;
        box-sizing: border-box;
    }
  </style> 
<script>
function validateForm() {
  var y = document.forms["form"]["name"].value; 
  if (y == null || y == "") {
    document.getElementById("errormsg").innerHTML="Name must be filled out.";
    return false;
  }
  var br = document.forms["form"]["branch"].value;
  if (br == "") {
    document.getElementById("errormsg").innerHTML="Please select your branch";
    return false;
  }
  if (m.length < 10) {
    document.getElementById("errormsg").innerHTML="Passwordr must be 12 digits long";
    return false;
  }
  var g = document.forms["form"]["gender"].value;
  if (g=="") {
    document.getElementById("errormsg").innerHTML="Please select your gender";
    return false;
  }
  var x = document.forms["form"]["username"].value;
  if (x.length == 0) {
    document.getElementById("errormsg").innerHTML="Please enter a valid username";
    return false;
  }
  if (x.length < 4) {
    document.getElementById("errormsg").innerHTML="Username must be at least 4 characters long";
    return false;
  }
  var m = document.forms["form"]["phno"].value;
  if (m.length != 10) {
    document.getElementById("errormsg").innerHTML="Phone number must be 10 digits long";
    return false;
  }
  var a = document.forms["form"]["password"].value;
  if(a == null || a == ""){
    document.getElementById("errormsg").innerHTML="Password must be filled out";
    return false;
  }
  if(a.length<4 || a.length>15){
    document.getElementById("errormsg").innerHTML="Passwords must be 4 to 15 characters long.";
    return false;
  }
  var b = document.forms["form"]["cpassword"].value;
  if (a!=b){
    document.getElementById("errormsg").innerHTML="Passwords must match.";
    return false;
  }
}
</script>
</head>
<body>
<div class="w3layouts-main">
  <div class="bg-layer">
    <br><br>
    <div class="main-agileits">
      <div class="register-form">                   
        <div class="text-center" style="width: 100%;margin-bottom: 0.5rem;">
          <h2 style="color:#fff !important;">BRDM Quiz</h2>
        </div>
        <div class="sap_tabs">
          <div id="horizontalTab"> 
            <ul style="margin-top: -40px;width: 100%;">
                <input type="submit" value="Log In" class="resp-tab-item" style="width: 40%;" aria-controls="tab_item-0" role="tab" />
                <input type="submit" value="Register"  class="resp-tab-item" style="width: 40%;" aria-controls="tab_item-1" role="tab"/>
            </ul> <br><br> 
            <?php
              if (@$_GET['w1']) {
                  echo '<p class="error">'. @$_GET['w1'] . '</p>';
              }
            ?>
            <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-0"> 

              <form action="login.php?q=index.php" method="POST">
                <div class="fields-grid">
                  <div class="styled-input">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <input type="text" placeholder="Username" id="username" name="username" required/>
                  </div>
                  <div class="styled-input">
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <input type="password" placeholder="Password" id="password" name="password" required/>
                  </div>
                  <div class="clear"></div>
                </div>
                <input type="submit" value="Submit" />
              </form>
            </div>

            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
              
        <div style="color:#fff !important;font-size:2.5rem"><h3 style="color:#fff !important;">Registration Form</h3></div>
        <hr>
            <form method="POST" name="form" action="sign.php?q=account.php" onSubmit="return validateForm()" autocomplete="off">
              <div class="fields-grid">  
                <div class="styled-input">
                  <i class="fa fa-user" aria-hidden="true"></i>
                  <input type="text" id="name" name="name" required placeholder="Enter your name" value="<?php
if (isset($_GET['name']))
{
echo $_GET['name'];
}?>">
                </div>
                <div class="styled-input">
                  <i class="fa fa-user" aria-hidden="true"></i>
                  <input type="text" id="rollno" name="rollno" required placeholder="Enter your Roll no (Ex.732116104***)" value="<?php
if (isset($_GET['rollno']))
{
echo $_GET['rollno'];
}?>">
                </div>
                <div class="styled-input agile-styled-input-top">
                  <i class="fa fa-venus" aria-hidden="true"></i>
                  <select class="category2" id="gender" name="gender" placeholder="Select your gender"required>
                    <option value="" <?php
                                  if (!isset($_GET['gender'])) {
                                      echo "selected";
                                  }
                                  
                                  ?> >Gender</option>
                    <option value="M" <?php
                                  if (isset($_GET['gender'])) {
                                      if ($_GET['gender'] == "M") {
                                          echo "selected";
                                      }
                                  
                                  }
                                  ?>>MALE</option>
                    <option value="F" <?php
                                  if (isset($_GET['gender'])) {
                                      if ($_GET['gender'] == "F") {
                                          echo "selected";
                                      }
                                  
                                  }
                                  ?>>FEMALE</option>
                  </select>
                </div>
                <div class="styled-input agile-styled-input-top">
                  <i class="fa fa-book" aria-hidden="true"></i>
                  <select class="category2"id="branch" name="branch" placeholder="Select your branch" required>
                    <option value="" <?php
        if (!isset($_GET['branch'])) {
            echo "selected";
        }
        
        ?>>Select Branch</option>
        <option value="CSE" <?php
        if (isset($_GET['branch']))
        {
      if ($_GET['branch'] == "CSE")
          echo "selected";
        }
        ?>>Computer Science and Engineering</option>
        <option value="ECE" <?php
        if (isset($_GET['branch']))
        {
      if ($_GET['branch'] == "ECE")
          echo "selected";
        }
      ?>>Electronics and Communication Engineering</option>
        <option value="EEE" <?php
        if (isset($_GET['branch']))
        {
      if ($_GET['branch'] == "EEE")
          echo "selected";
        }
      ?>>Electrical and Electronics Engineering</option>
        <option value="IT" <?php
        if (isset($_GET['branch']))
        {
        if ($_GET['branch'] == "IT")
          echo "selected";
        }
      ?>>Information Technology</option>
        <option value="CHEM" <?php
        if (isset($_GET['branch']))
        {
      if ($_GET['branch'] == "CHEM")
          echo "selected";
        }
      ?>>Chemical Engineering</option>
        <option value="CIVIL" <?php
        if (isset($_GET['branch']))
        {
      if ($_GET['branch'] == "CIVIL")
          echo "selected";
        }
      ?>>Civil Engineering</option> 
        <option value="MECH" <?php
        if (isset($_GET['branch']))
        {
      if ($_GET['branch'] == "MECH")
          echo "selected";
        }
      ?>>Mechanical Engineering</option> 
        <option value="BIOTECH" <?php
        if (isset($_GET['branch']))
        {
      if ($_GET['branch'] == "BIOTECH")
          echo "selected";
        }
      ?>>Biotechnology</option> 
        <option value="IMSC" <?php
        if (isset($_GET['branch']))
        {
      if ($_GET['branch'] == "IMSC")
          echo "selected";
        }
      ?>>Integrated MSc</option>
                  </select>
                </div>
                <div class="styled-input">
                  <i class="fa fa-user" aria-hidden="true"></i>
                  <input id="username" name="username" placeholder="Choose a username" required type="text" value="<?php
if (isset($_GET['username']))
{
echo $_GET['username'];
};
?>" style="<?php
if (isset($_GET['q7']))
    echo "border-color:red";
?>">
                </div>
                <div class="styled-input">
                  <i class="fa fa-phone" aria-hidden="true"></i>
                  <input type="number" name="phno" id="phno" placeholder="Enter your mobile number" value="<?php
        if (isset($_GET['phno'])) {
            echo $_GET['phno'];
        }
        ?>"style="<?php
        if (isset($_GET['q7'])) {
            echo "border-color:red !important";
        }
        
        ?>">
                </div>
                
                <div class="styled-input">
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <input type="password" placeholder="Enter your password" id="password" name="password" required/>
                </div>
                  
                <div class="styled-input">
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <input type="password" placeholder="Confirm Password" id="cpassword" name="cpassword" required/>
                  </div>
                <div class="clear"></div>
              </div>
                <input type="submit" name="submit" value="Create Account" />
            </form>		
        </div>
        

        </div>
        <div class="social">
				<ul>
					<li><a href="#" target="_blank" class="facebook"><span class="fa fa-facebook"></span></a></li>
					<li><a href="#" target="_blank" class="instagram"><span class="fa fa-instagram"></span></a></li>
				</ul>
			</div>
      <div style="margin-top:30px;font-size:1.5rem;">      
      <a href="#" data-toggle="modal" data-target="#login" style="color:lightyellow"><b>Admin Login</b></a>
      </div>    
      
   
      <div class="modal fade" id="login">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header" style="background: rgb(0,0,0,0.9) !important;">
              <button type="button" class="close" data-dismiss="modal" style="color:#fff;">
                <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
              </button>
              <h4 class="modal-title"><span style="color:#fff;font-size:14px;font-weight: bold">Login to Server</span></h4>
            </div>
          <div class="modal-body title1" style="background: rgb(0,0,0,0.9) !important;">
                  <form role="form" method="post" action="admin.php?q=index.php">
                      <input type="text" name="uname" maxlength="20"  placeholder="Username" class="form-control"/>
                    
                      <input type="password" name="password" maxlength="20" placeholder="Password" class="form-control"/>
                    
                      <input type="submit" name="login" value="Log In"/>
                  </form>                  
          </div>
        </div>
        </div>

      </div>
    </div>

    <!-- copyright -->
    <div class="copyright">
      <p>Developed by <a href="#" target="_blank">BRDM</a>.
      </p>
    </div>
    <div class="col-md-12">
<a href="feedback.php" data-toggle="modal" data-target="#login" style="color:lightyellow">Feedback</a></div>
</div>
  </div>
</div>


  <script src="./assets/js/jquery-ui.js"></script>
  <script>
    $(function () {
      $("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
    });
  </script>
</body>
</html>