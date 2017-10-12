<%-- 
    Document   : admin
    Created on : Oct 9, 2017, 6:09:46 PM
    Author     : ngquangdat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <c:import url='header.html' charEncoding='utf-8' />
        <section id="cart_items">
		<div class="container">
			


			
			<div class="review-payment">
				<h2>Danh sách sản phẩm</h2>
			</div>

			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
                                                    <td>ID</td>
							<td >Sản phẩm</td>
							<td >Chi tiết</td>
							<td >Ảnh</td>
							<td >Nhà cung cấp</td>
							<td >Giá</td>
                                                        <td >Trạng thái</td>
                                                        <td></td>
						</tr>
					</thead>
					<tbody>
						<tr>
                                                        <td>1</td>
							
							<td>
                                                            <p><a href="">Colorblock Scuba</a></p>
								
							</td>
                                                        <td>abc</td>
                                                        <td>
								<a href=""><img src="images/cart/one.png" alt=""></a>
							</td>
                                                        <td>USA</td>
                                                        <td>100.000 VNĐ</td>
                                                        <td>Sale</td>
                                                        <td><a class="btn btn-default check_out" href="#">Sửa</a></td>
						</tr>

						
						
					</tbody>
				</table>
			</div>
                    
                    
                    <br><br>
			
		</div>
            
	</section> <!--/#cart_items-->
        
    </body>
</html>
