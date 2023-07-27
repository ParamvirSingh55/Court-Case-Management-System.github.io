<?php
    if(isset($_POST["update-info"])){
        $firstname=($_POST["fname"]);
        $lastname=($_POST["lname"]);
        $phone=($_POST["phone_no"]);
        $city=($_POST["city"]);
        $address=($_POST["address"]);

        require_once("includes/db.php");
        $con;
        if ($con) {
            $lid = $_SESSION['lawyer_id'];
            $stmt = $con->prepare("UPDATE lawyer_login SET lawyer_first_name = ?
            , lawyer_last_name = ? , lawyer_phone_no = ? ,lawyer_city =?, lawyer_address = ? WHERE lawyer_id = ? ");
            $stmt->bind_param('ssssss', $firstname, $lastname, $phone, $city,$address, $lid);
            $stmt->execute();
            if ($stmt->affected_rows === -1) {
                echo "Error";
            } else {
                $stmt->close();
                echo "info updated";
                Header("Location: lawyer_dashboard.php");
            }
        }
    }

?>
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
                require_once("includes/db.php");
                $con;
                if ($con) {
                    $stmt = $con->prepare("
                    SELECT lawyer_first_name, lawyer_last_name,
                    lawyer_email, lawyer_phone_no, lawyer_city,
                    lawyer_address
                    FROM lawyer_login WHERE lawyer_id = ?");
                    $stmt->bind_param('s', $_SESSION['lawyer_id']);
                    $stmt->execute();
                    $stmt->store_result();
                    $stmt->bind_result($lfn, $lln, $le, $lph,$lc, $la);
                    while ($stmt->fetch()) {
                        $lawyer_first_name = $lfn;
                        $lawyer_last_name = $lln;
                        $lawyer_email = $le;
                        $lawyer_phone_no = $lph;
                        $lawyer_city=$lc;
                        $lawyer_address = $la;
                    }
                    echo
                    "
                        <h1>Update Profile</h1><br>
                        <form action='lawyer_dashboard.php?q=updateinfo' method='post'>
                            <label for='fname'>
                                First Name:
                            </label>
                            <input type='text' class='form-control' value='{$lawyer_first_name}'
                            placeholder='First name' name='fname' required><br>

                            <label for='lname'>
                                Last Name:
                            </label>
                            <input type='text' class='form-control' value='{$lawyer_last_name}'
                            placeholder='Last name' name='lname' required><br>

                            <label for='phone'>
                                Phone no:
                            </label>
                            <input type='number' class='form-control' value='{$lawyer_phone_no}'
                            placeholder='Phone no' name='phone_no'><br>
                            
                            <label for='add'>
                                City:
                            </label>
                            <input type='text' class='form-control' value='{$lawyer_city}'
                            placeholder='city' name='city'><br>
                            <label for='add'>
                                Address:
                            </label>
                            <input type='text' class='form-control' value='{$lawyer_address}'
                            placeholder='Address' name='address'><br>

                            <button class='btn btn-primary btn-lg btn-block' type='submit' name='update-info'>
                                Update info
                            </button>
                        </form>
                    ";
                }
            ?>

        </div>
   </div>
</div>