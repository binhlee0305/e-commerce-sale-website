<!-- History -->
<div class="modal fade" id="detail<?php echo $hrow['sale_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<center>
					<h4 class="modal-title" id="myModalLabel">Purchase Full Details</h4>
				</center>
			</div>
			<div class="modal-body">
				<?php
				$sales = mysqli_query($conn, "select * from sales where sale_id='" . $hrow['sale_id'] . "'");
				$srow = mysqli_fetch_array($sales);
				?>
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<p class="pull-right">Date: <?php echo date("F d, Y", strtotime($srow['sale_date'])); ?></p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<table width="100%" class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>Product name</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Total</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$total = 0;
									$pd = mysqli_query($conn, "select * from sales_item left join product on product.product_id=sales_item.PRODUCT_id where sales_item.SALES_id='" . $hrow['sale_id'] . "'");
									while ($pdrow = mysqli_fetch_array($pd)) {
									?>
										<tr>
											<td><?php echo ucwords($pdrow['product_name']); ?></td>
											<td align="right"><?php echo number_format($pdrow['product_price'], 2); ?></td>
											<td><?php echo $pdrow['sale_qty']; ?></td>
											<td align="right">
												<?php
												$subtotal = $pdrow['product_price'] * $pdrow['sale_qty'];
												echo number_format($subtotal, 2);
												$total += $subtotal;
												?>
											</td>
										</tr>
									<?php
									}
									?>
									<tr>
										<td align="right" colspan="3"><strong>Total</strong></td>
										<td align="right"><strong><?php echo number_format($total, 2); ?></strong></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
			</div>
		</div>
	</div>
</div>