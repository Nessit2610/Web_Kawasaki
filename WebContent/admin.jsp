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
<!--menu -->
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="adminController"> <img alt="" src="Picture/logo.png" style="width : 150px;"> </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="adminController">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="adminController">Chỉnh sửa</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="adminController">Bảo hành</a>
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
	      <ul style="display: flex; list-style-type: none; position: absolute; right: 10px; top: 4px;">
		       <li><button type="button" class="btn btn-outline-success"><i class="fa-regular fa-circle-user"></i> Xin Chào Admin</button></li>
		      <li style="margin-left: 5px;"> <form action="dangnhapController"><button type="submit" name="DangXuat" class="btn btn-outline-success"> Đăng Xuất </button></form></li>
	    </ul>
	  
	</div>
</nav>
<!-- hien thi donhang  -->
<%if(request.getAttribute("dsct") == null){ %> 
			<div>
				<table border="1" width="100%" class="table table-striped table-bordered table-responsive ">
					<%
						ArrayList<hoadonbean> ds = (ArrayList<hoadonbean>)request.getAttribute("danhsachdonhang");
						int n = ds.size();
						
					%>
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
							<td>
								Xác nhận thanh toán
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
							<form action="adminController?MaHD=<%=s.getMaHoaDon()%>" method="post">
									<button class="detail" name="btct" type="submit"> Xem chi tiết </button>
							</form>
						</td>
						<td>
							<form action="adminController?MaHD=<%=s.getMaHoaDon()%>" method="post">
									<button class="detail" name="btnxacnhanhd" type="submit"> Xác Nhận </button>
							</form>
						</td>
					</tr>
					<%} %>
				</table>
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
						<td>
								Xác nhận thanh toán
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
					<td>
						<form action="adminController?Mact=<%=s.getMacthd()%>&Mahd=<%=s.getMahoadon()%>" method="post">
								<button class="detail" name="btnxacnhanct" type="submit"> Xác Nhận </button>
						</form>
					</td>
				</tr>
				<%} %>
			</table>
	
	
	<%}%>
	
		

</body>
</html>