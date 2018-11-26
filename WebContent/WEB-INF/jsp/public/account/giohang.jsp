<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div id="content" class="col-sm-9">
	<h1>Giỏ hàng</h1>
	<c:choose>
		<c:when test="${listCart.size() == 0 }">
			<p>Giỏ hàng của bạn trống!</p>
			<div class="buttons clearfix">
				<div class="pull-right">
					<a href="${pageContext.request.contextPath}/"><button type="button" data-toggle="tooltip" class="btn btn-danger"
						onclick="">Tiếp tục</button></a>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<form action="${pageContext.request.contextPath }/checkorders"
							method="post" id="form-banner">
							<thead>
								<tr>
									<td class="text-left">Tên sản phẩm</td>
									<td class="text-right">Số lượng</td>
									<td class="text-right">Đơn giá</td>
									<td class="text-right">Tổng tiền</td>
								</tr>
							</thead>
							<tbody>
								<c:set value="0" var="tong"></c:set>
								<c:forEach items="${listCart }" var="cart">
									<tr>
										<input type="hidden" value="${cart.id_product }" name="id" />
										<td class="text-left"><a
											href="${pageContext.request.contextPath }/${slugUtils.toSlug(cart.name)}-${cart.id_product}.html">${cart.name }</a></td>

										<td class="text-right cart-number"><input type="text"
											value="${cart.num }" name="num" /></td>
										<c:choose>
											<c:when test="${cart.gia_sale  == 0}">
												<td class="text-right"><fmt:formatNumber type="number"
														pattern="###,###" value="${cart.gia }" /> đ</td>
											</c:when>
											<c:otherwise>
												<td class="text-right"><fmt:formatNumber type="number"
														pattern="###,###" value="${cart.gia_sale}" /> đ</td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${cart.gia_sale  == 0}">
												<td class="text-right"><fmt:formatNumber type="number"
														pattern="###,###" value="${cart.gia * cart.num }" /> đ</td>
											</c:when>
											<c:otherwise>
												<td class="text-right"><fmt:formatNumber type="number"
														pattern="###,###" value="${cart.gia_sale * cart.num }" />
													đ</td>
											</c:otherwise>
										</c:choose>
									</tr>
									<c:choose>
										<c:when test="${cart.gia_sale  == 0}">
											<c:set value="${tong + (cart.gia * cart.num)}" var="tong"></c:set>
										</c:when>
										<c:otherwise>
											<c:set value="${tong + (cart.gia_sale * cart.num)}"
												var="tong"></c:set>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="3" class="text-right"><strong>Thành
											tiền:</strong></td>
									<td class="text-right"><fmt:formatNumber type="number"
											pattern="###,###" value="${tong }" /> đ</td>
								</tr>
							</tfoot>
					</table>
					</form>
				</div>
			</div>
			<div class="buttons clearfix">
				<div class="pull-right">
					<button type="button" data-toggle="tooltip" class="btn btn-danger"
						onclick="$('#form-banner').submit()">Tiếp tục</button>
				</div>
			</div>
		</c:otherwise>
	</c:choose>

</div>
</div>
</div>
