<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div id="content" class="col-sm-9">
	<h1>Lịch sử Đơn hàng</h1>
	<div class="table-responsive">
		<table class="table table-bordered table-hover">

			<thead>
				<tr>
					<td class="text-right">ID Đơn hàng</td>
					<td class="text-left">Khách hàng</td>
					<td class="text-right">Số Sản phẩm</td>
					<td class="text-right">Tổng số</td>
					<td class="text-left">Ngày tạo</td>
					<td></td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listOrdersDetails}" var="objOrder">
					<tr>
						<td class="text-right">${objOrder.id_orders }</td>
						<td class="text-left">${objOrder.id_orders}</td>
						<td class="text-right">${objOrder.id_orders }</td>
						<td class="text-right">${objOrder.gia }</td>
						<td class="text-left">${objOrder.date_create }</td>
						<td class="text-right"><a
							href="http://vinaenter.myzozo.net/index.php?route=account/order/info&amp;order_id=56"
							data-toggle="tooltip" title="Xem" class="btn btn-info"><i
								class="fa fa-eye"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- <div class="row">
        <div class="col-sm-6 text-left"></div>
        <div class="col-sm-6 text-right">Hiển thị 1 đến 1 của 1 (1 trang)</div>
      </div> -->
	<div class="buttons clearfix">
		<div class="pull-right">
			<a href="" class="btn btn-primary">Tiếp tục</a>
		</div>
	</div>
</div>
</div>
</div>
