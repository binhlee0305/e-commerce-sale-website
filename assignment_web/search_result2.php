<?php 
	$name=$_POST['search']; 
?>
<body>
<div class="w3-container">
	<div class="w3-margin-top"></div>
	<div>
	<?php
		$inc=4;
		$query=mysqli_query($conn,"select * from PRODUCT where product_name like '%$name%'");
		include 'product_item.php';
	?>
	</div>
</div>
</body>