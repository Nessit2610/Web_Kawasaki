<%@page import="bean.chitiethoadonbean"%>
<%@page import="bean.hoadonbean"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.xebean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Kawasaki Motor</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">   
	<link rel="stylesheet" href="CSS/main.css">
	<script src="https://kit.fontawesome.com/5000851c93.js" crossorigin="anonymous"></script>
</head>

<body>
<%		
		long makh = 0;
		int slmh = 0;
		giohangbo ghb = new giohangbo();
		if(session.getAttribute("gh") != null){
			ghb = (giohangbo)session.getAttribute("gh");
		}
		if(session.getAttribute("DN")!=null){
			slmh = ghb.ds.size();
		}
%>
<!--menu -->
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="xeController"> <img alt="" src="Picture/logo.png" style="width : 150px;"> </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="xeController">Home</a>
        </li>
        <li class="nav-item">
        <%if(session.getAttribute("DN") != null){ 
        	khachhangbean khbean =(khachhangbean)session.getAttribute("DN");
		  	makh = khbean.getMakh();%>
          <a class="nav-link" href="giohangController"><i class="bi bi-cart2"></i>Cart ( <%=slmh %> )</a>
		<%}%>	 
		<%if(session.getAttribute("DN") == null){ %>
          <a class="nav-link" href="giohangController"><i class="bi bi-cart2"></i>Cart</a>
		<%}%>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="donhangController<%=makh != 0?"?mkh=" + makh:""%>">Đơn hàng</a>
        </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Loại Xe
          </a>
          <div>
          		<%if(session.getAttribute("DN") != null){ %>
	         	  <ul class="dropdown-menu" style="top: 140%;left: -400px;min-width: 1382px;background-color: #ccc; height: 110px;">
	         	  	<div style="width: 173px;height: 140px;margin-left: 40px;" class="div-border">
	         	  		<p style="color: #5a5a60; font-size: 11px;font-weight: bold; opacity: 0.8;" class="drop-text">ĐƯỜNG PHỐ / ĐƯỜNG ĐUA</p>
			            <li style="text-transform: uppercase;"><a style="font-weight: bold;margin-left: 27px;" class="dropdown-item loaixe" href="previewController?ml=Ninja">Ninja</a></li>
	         	  	</div>
					<div style="margin-left: 17px;" class="div-border1">
						<p style="color: #5a5a60; font-size: 11px;font-weight: bold; opacity: 0.8; text-align: center;margin-left: 10px;" class="drop-text1">ĐƯỜNG PHỐ</p>
						<div style="display: flex">
				            <li style="text-transform: uppercase;"><a style="font-weight: bold;margin-left: 10px;" class="dropdown-item loaixe" href="previewController?ml=Z">Z</a></li>
				            <li style="text-transform: uppercase;"><a style="font-weight: bold;text-align: center;" class="dropdown-item loaixe" href="previewController?ml=W">W</a></li>
				            <li style="text-transform: uppercase;"><a style="font-weight: bold;text-align: center;" class="dropdown-item loaixe" href="previewController?ml=Vulcan">Vulcan</a></li>
						</div>
					</div>
					<div style="margin-left: 50px;" class="div-border2">
						<p style="color: #5a5a60; font-size: 11px;font-weight: bold; opacity: 0.8; text-align: center;" class="drop-text2">TOURING</p>
			            <li style="text-transform: uppercase;"><a style="font-weight: bold;text-align: center;" class="dropdown-item loaixe" href="previewController?ml=Versys">Versys</a></li>
					</div>
					<div style="margin-left: 55px;">
						<p style="color: #5a5a60; font-size: 11px;font-weight: bold; opacity: 0.8; text-align: center;" class="drop-text3">SUPERMOTO / DUAL PURPOSE</p>
			            <li style="text-transform: uppercase;"><a style="font-weight: bold;text-align: center;" class="dropdown-item loaixe" href="previewController?ml=KXL">KXL</a></li>
					</div>
		          </ul>
				<%}%>
				<%if(session.getAttribute("DN") == null){ %>
	         	  <ul class="dropdown-menu" style="top: 140%;left: -370px;min-width: 1383px;background-color: #ccc; height: 110px;">
	         	  	<div style="width: 173px;height: 140px;margin-left: 40px;" class="div-border">
	         	  		<p style="color: #5a5a60; font-size: 11px;font-weight: bold; opacity: 0.8;" class="drop-text">ĐƯỜNG PHỐ / ĐƯỜNG ĐUA</p>
			            <li style="text-transform: uppercase;"><a style="font-weight: bold;margin-left: 27px;" class="dropdown-item loaixe" href="previewController?ml=Ninja">Ninja</a></li>
	         	  	</div>
					<div style="margin-left: 17px;" class="div-border1">
						<p style="color: #5a5a60; font-size: 11px;font-weight: bold; opacity: 0.8; text-align: center;margin-left: 10px;" class="drop-text1">ĐƯỜNG PHỐ</p>
						<div style="display: flex">
				            <li style="text-transform: uppercase;"><a style="font-weight: bold;margin-left: 10px;" class="dropdown-item loaixe" href="previewController?ml=Z">Z</a></li>
				            <li style="text-transform: uppercase;"><a style="font-weight: bold;text-align: center;" class="dropdown-item loaixe" href="previewController?ml=W">W</a></li>
				            <li style="text-transform: uppercase;"><a style="font-weight: bold;text-align: center;" class="dropdown-item loaixe" href="previewController?ml=Vulcan">Vulcan</a></li>
						</div>
					</div>
					<div style="margin-left: 50px;" class="div-border2">
						<p style="color: #5a5a60; font-size: 11px;font-weight: bold; opacity: 0.8; text-align: center;" class="drop-text2">TOURING</p>
			            <li style="text-transform: uppercase;"><a style="font-weight: bold;text-align: center;" class="dropdown-item loaixe" href="previewController?ml=Versys">Versys</a></li>
					</div>
					<div style="margin-left: 55px;">
						<p style="color: #5a5a60; font-size: 11px;font-weight: bold; opacity: 0.8; text-align: center;" class="drop-text3">SUPERMOTO / DUAL PURPOSE</p>
			            <li style="text-transform: uppercase;"><a style="font-weight: bold;text-align: center;" class="dropdown-item loaixe" href="previewController?ml=KXL">KXL</a></li>
					</div>
		          </ul>
				<%}%>
          </div>  
        </li>
      </ul>
      <form class="d-flex" role="search" method="post" action="previewController">
        <input class="form-control me-2" type="search" placeholder="Nhập tên xe" aria-label="Search" name="txttk">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<nav>
	<div style="width: 100%; background-color:#454548; height:50px; border-top: 5px solid #6c3; position: relative;">
	     <%if(session.getAttribute("DN") == null){%>
	     <ul style="display: flex; list-style-type: none; position: absolute; right: 10px; top: 4px;">
		      <li> <button type="button" class="btn btn-outline-success"> <a class="nav-link active" href="dangnhapController">Đăng Ký </a></button></li>
		      <li style="margin-left: 5px;"> <button type="button" class="btn btn-outline-success" ><a class="nav-link active" href="dangnhapController">Đăng Nhập</a></button></li>
	    </ul>
	     <%} %>
	      <%if(session.getAttribute("DN") != null){
	    	  khachhangbean khbean =(khachhangbean)session.getAttribute("DN");
	  		  String tenkh = khbean.getHoten();
	      %>
	      <ul style="display: flex; list-style-type: none; position: absolute; right: 10px; top: 4px;">
		       <li><button type="button" class="btn btn-outline-success"><i class="fa-regular fa-circle-user"></i> Xin Chào <%=tenkh%></button></li>
		      <li style="margin-left: 5px;"> <form action="dangnhapController"><button type="submit" name="DangXuat" class="btn btn-outline-success"> Đăng Xuất </button></form></li>
	    </ul>
	     <%} %>
	</div>
</nav>
<!-- hien thi donhang  -->
<%if((int)request.getAttribute("check") == 0 ){%>
			<br><br> <br>
		<h1 class="styletext"  style="text-align: center;">Vui lòng đăng nhập để xem đơn hàng đã đặt</h1>
	<%}%>
	<%if((int)request.getAttribute("check") == 1){%>
		<%if(request.getAttribute("dsct") == null){ %> 
			<div>
				<table border="1" width="100%" class="table table-striped table-bordered table-responsive ">
					<%
						ArrayList<hoadonbean> ds = (ArrayList<hoadonbean>)request.getAttribute("danhsachdonhang");
						int n = ds.size();
						if(n == 0){%>
							<h1 class="styletext"  style="text-align: center;">Đơn hàng trống</h1>
						
						<%}%>
						<%if(n!=0){%>
						<tr class="table-success" style="font-weight: 600">	
							<td>
								Mã Hóa Đơn
							</td>
							<td>
								Ngày Mua
							</td>
							<td > 
								Trạng thái thanh toán
							</td>
							<td>
								Chi tiết đơn hàng
							</td>
						</tr>
					
					<%for(int i = 0; i<n;i++){
						 hoadonbean s  = ds.get(i); %>
					<tr> 
						<td> 
							<%=s.getMaHoaDon()%>
						</td>
						<td> 
							<%=s.getNgayMua()%>	
						</td>
						<td> 
							<%if(s.isDamua()==false){ %>
							 <span style="color: red; font-weight: 500;">Chưa Thanh Toán</span>
							<%} %>
							<%if(s.isDamua()==true){ %>
							<span style="color: green; font-weight: 500;">Đã Thanh Toán</span>
							<%} %>
						</td>
						<td>
							<form action="donhangController?MaHD=<%=s.getMaHoaDon()%>" method="post">
									<button class="detail" name="btct" type="submit"> Xem chi tiết </button>
							</form>
						</td>
					</tr>
					<%} %>
				</table>
			</div>
			<%}%>
<div style="justify-content: center; display: flex;">
		<form style="margin-right: 8px;" method='post' action='donhangController'>
		 			<input style="border: 1px solid #198754; background-color: transparent; color: #198754;" type='submit' name='xemchuatt' value='Chưa Thanh Toán' class="btn btn-primary test-hover">
		</form>
		<form method='post' action='donhangController'>
		 	 <input style="border: 1px solid #198754; background-color: transparent; color: #198754;" type='submit' name='xemdatt' value='Đã Thanh Toán' class="btn btn-primary test-hover">
		</form>
</div>			
	
<%}%>	
	<%if(request.getAttribute("dsct") != null){%>
					<table border="1" width="100%" class="table table-striped table-bordered table-responsive ">
				<%
					ArrayList<chitiethoadonbean> ds1 = (ArrayList<chitiethoadonbean>)request.getAttribute("dsct");
					int n = ds1.size();
					
				%>
					<tr class="table-success" >	
						<td>
							Mã Chi Tiết HD
						</td>
						<td>
							Mã hóa đơn
						</td>
						<td>
							Mã xe
						</td>
						<td>
							Tên xe
						</td>
						<td > 
							Số Lượng Mua
						</td>
						
						<td > 
							Trạng thái thanh toán
						</td>
						
					</tr>
				
				<%for(int i = 0; i<n;i++){
					 chitiethoadonbean s  = ds1.get(i); %>
				<tr> 
					<td> 
						<%=s.getMacthd()%>
					</td>
					<td> 
						<%=s.getMahoadon()%>	
					</td>
					<td> 
						<%=s.getMaxe()%>	
					</td>
					<td> 
						<%=s.getTenxe()%>
					</td>
					<td> 
						<%=s.getSoluongmua()%>
					</td>
					<td> 
						<%if(s.isDamua()==false){ %>
						<span style="color: red; font-weight: 500;">Chưa Thanh Toán</span>
						<%} %>
						<%if(s.isDamua()==true){ %>
						<span style="color: green; font-weight: 500;">Đã Thanh Toán</span>
						<%} %>
					</td>
				</tr>
				<%} %>
			</table>
	
	
	<%}%>
	
		
<%}%>
	
<footer style="margin-top:100px;">
	<div style="width: 100%; background-color:#0f0f10; height:320px; border-bottom: 5px solid #6c3; color: white;">
	<div style="width: 100%; background-color:#0f0f10; height:320px; color: white;">
		<div class="d-flex">
			<div class="footer-items">
					<p class="footer-text seperate">VỀ KAWASAKI</p>
					<a href="" class="footer-des">Chính Sách Pháp Lý</a>
			</div>
			<div class="footer-items">
					<p class="footer-text seperate">THÔNG TIN ĐẠI LÝ</p>
					<a href="" class="footer-des">Vị Trí Đại Lý</a>
			</div>
		</div>
		
		<div class="d-flex">
			<div class="footer-items">
					<p class="footer-text seperate">TÍN TỨC</p>
					<a href="" class="footer-des">Mẫu Xe Đặc Trưng Mới</a>
			</div>
			<div class="footer-items">
					<p class="footer-text seperate">NGUỒN</p>
					<a class="footer-des">Thông Tin Liên Hệ</a>
			</div>
		</div>
	</div>
	
	<div class="footer-infor">
		<p class="footer-infor__text">Công ty TNHH Kawasaki Motors Việt Nam 2022</p>
		<div class="d-flex footer-infor-icon">
			<i style="margin-right: 30px;" class="fa-brands fa-facebook-f"></i>
			<i class="fa-brands fa-instagram"></i>
		</div>
	</div>

</div>

</footer>
</body>
</html>