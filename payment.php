<?php include('session.php'); ?>
<?php include('conn.php');?>
<body>
    <div class="w3-container">
        <div class="row w3-margin-top">
            <div class="col-lg-12">
                <h1 class="page-header">Delivery Information</h1>
            </div>
        </div>
        <!-- /.row -->
        <div class="row">
        <?php $sql = mysqli_query($conn, "select * from `USER` join `CUSTOMER` on USER.user_id = CUSTOMER.user_id where USER.user_id='" . $_SESSION['id'] . "'");
            $row = mysqli_fetch_array($sql);
            $fullname = $row['customer_name'];
            $phone = $row['phone_number'];
            $email = $row['email'];
            $address = $row['address'];
         ?>
            <form method="post" action="">
                Name: <?php echo $fullname ?>
                <br><br>
                Phone: <?php echo $phone ?>
                <br><br>
                Address:<?php echo $address ?>
                <br><br>
                Comment: <textarea name="comment" rows="5" cols="40"></textarea>
                <br><br>
                Gender:
                <input type="radio" name="gender" value="female">Female
                <input type="radio" name="gender" value="male">Male
                <input type="radio" name="gender" value="other">Other
                <br><br>
                <input type="submit" name="submit" value="Payment">
            </form>

        </div>
    </div>
    <!-- <script>
            $(document).ready(function() {
                $('#history').addClass('active');

                $('#historyTable').DataTable({
                    "bLengthChange": true,
                    "bInfo": true,
                    "bPaginate": true,
                    "bFilter": true,
                    "bSort": true,
                    "pageLength": 7
                });
            });
        </script> -->
</body>

</html>