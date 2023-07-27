<div class="container-fluid">
        <div class="row">
            <div class="col-sm-2">
                <h1>
                    <?php echo $_SESSION["lawyer_name"]; ?>
                </h1>
                <br>

                <ul id="side_menu" class="nav nav-pills nav-stacked">
                    <li class="active">
                        <a href="lawyer_dashboard.php">
                            <span class="glyphicon glyphicon-comment"></span>
                            &nbsp; Profile
                        </a>
                    </li>
                    <li class="">
                        <a href="lawyer_dashboard.php?q=currentcases">
                            <span class="glyphicon glyphicon-list-alt"></span>
                            &nbsp; Current Cases
                        </a>
                    </li>
                    <li class="">
                        <a href="lawyer_dashboard.php?q=finishedcases">
                            <span class="glyphicon glyphicon-ok"></span>
                            &nbsp; Finished Cases
                        </a>
                    </li>
                    <li class="">
                        <a href="lawyer_dashboard.php?q=managerequests">
                            <span class="glyphicon glyphicon-briefcase"></span>
                            &nbsp; Manage Requests
                        </a>
                    </li>
                </ul>
            </div>
            <!--div ending of vertical nav -->






 <div class="col-sm-10" style="font-weight: bold; padding-bottom: 30px;">
<?php
require_once "includes/db.php";
$con;
if($con){
$stmt = $con->prepare("
SELECT lawyer_first_name, lawyer_last_name,
lawyer_email, lawyer_phone_no, lawyer_city,
lawyer_address,lawyer_category
from lawyer_login WHERE lawyer_id = ?");
$stmt->bind_param('s', $_SESSION['lawyer_id']);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($fname, $lname, $email, $phone, $city, $address, $category);
$stmt->fetch();
//echo $_SESSION["lawyer_id"];


}

if (!$phone) {
	$phone = "<span class='text-muted'>Not given</span>";
}
if (!$city) {
	$city = "<span class='text-muted'>Not given</span>";
}
if (!$address) {
	$address = "<span class='text-muted'>Not given</span>";
}
if (!$category) {
	$category = "<span class='text-muted'>Not given</span>";
}

echo
"
    <h1>Your Profile</h1>
    <p>First Name: {$fname}</p>
    <p>Last Name: {$lname}</p>
    <p>Email: {$email}</p>
    <p>Phone number: {$phone}</p>
    <p>City: {$city}</p>
    <p>Address: {$address}</p>
    <p>Category: {$category}</p>
    <button onclick='window.location.href=`lawyer_dashboard.php?q=updateinfo`'
    class='btn btn-primary btn-lg'>Update info</button>"
?>
    </div>