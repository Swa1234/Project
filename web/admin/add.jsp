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
        <title>Admin Page - Thêm sản phẩm</title>
    </head>
    <body>
        <c:import url='header.html' charEncoding='utf-8' />
        <section id="cart_items">
		<div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		

    		<div class="row">  	
	    		<div class="col-sm-8">
	    			<div class="contact-form">
	    				<h2 class="title text-center">Thêm sản phẩm</h2>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	<form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
				            <div class="form-group col-md-12">
				                <input type="text" name="txtName" class="form-control" required="required" placeholder="Tên sản phẩm">
				            </div>
                                            <div class="form-group col-md-12">
				                <textarea name="txtDetail" id="message" required="required" class="form-control" rows="8" placeholder="Chi tiết sản phẩm"></textarea>
				            </div> 
                                            <div class="form-group col-md-12">
                                                <p>Chọn ảnh</p>
                                                <input type="file" name="img" class="form-control">
				            </div>
				            <div class="form-group col-md-12">
				                <input name="txtProvider" class="form-control" required="required" placeholder="Nhà cung cấp">
				            </div>
				            <div class="form-group col-md-12">
				                <input type="text" name="txtPrice" class="form-control" required="required" placeholder="Giá">
				            </div>
				            <div class="form-group col-md-12">
                                                <select name="txtStatus">
                                                    <option>New</option>
                                                    <option>Sale</option>
                                                </select>
				            </div>                       
				            <div class="form-group col-md-12">
				                <input type="submit" name="btnAdd" class="btn btn-primary pull-right" value="Thêm">
				            </div>
				        </form>
	    			</div>
	    		</div>
	    		<div class="col-sm-4">
	    			
    			</div>    			
	    	</div>  
    	</div>	
    </div><!--/#contact-page-->
            
	</section> <!--/#cart_items-->
        
    </body>
</html>
