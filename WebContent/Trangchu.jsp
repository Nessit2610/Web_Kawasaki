<%@page import="bo.giohangbo"%>
<%@page import="bean.khachhangbean"%>
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
    <link rel="icon" href="Picture/logo.png">
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
		  		  makh = khbean.getMakh();
	          %>
	          		
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
	         	  <ul class="dropdown-menu" style="top: 140%;left: -370px;min-width: 1382px;background-color: #ccc; height: 110px;">
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
		      <li> <button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#modaldangky"> Đăng Ký </button></li>
		      <li style="margin-left: 5px;"> <button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#modaldangnhap" > Đăng Nhập </button></li>
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
<!-- modal đăng nhập -->
<div class="modal fade" id="modaldangnhap" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h2  id="exampleModalLongTitle" style="font-weight: 600; font-family:Calibri; text-transform: uppercase; color: #454548;">thông tin đăng nhập</h2>
      </div>
      <div class="modal-body">
	      <form action="dangnhapController" method="post">
	           <div>
					<span class="styletext">Username:</span>  <input type="text" name="txtun" class="form-control input-lg"> <br> 
					<span class="styletext">Password:</span>  <input type="password" name="txtpass" class="form-control input-lg" > <br>
	           </div>
	             <div>
	           		<%if(session.getAttribute("DNS") != null){%>
	           			<p style="color: red; font-weight: 300; "><%=session.getAttribute("DNS") %> </p>
	           		<%}%>
	           		<%if(session.getAttribute("countdn")!= null){ %>
	           			<%if((int)session.getAttribute("countdn") >= 3){%>
          					<img src="simpleCaptcha.jpg" />
							<input type="text" name="answer" /><br>
	           			<%}%>
	           		<%} %>
	           		<%if(session.getAttribute("capcha")!= null){%>
						<p style="color: red; font-weight: 300; "><%=session.getAttribute("capcha") %> </p>
					<%}%>
	           </div>
			    <div class="modal-footer">
				        <button type="button" class="btn btn-outline-success" data-bs-dismiss="modal">Close</button>
				        <button type="submit" class="btn btn-success">Đăng Nhập</button>
			    </div>
					
	       </form>
      </div>
    </div>
  </div>
</div>
<!--modal đăng ký -->

<div class="modal fade" id="modaldangky" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h2  id="exampleModalLongTitle" style="font-weight: 600; font-family:Calibri; text-transform: uppercase; color: #454548;">Điền Thông Tin Đăng Ký</h2>
      </div>
      <div class="modal-body">
	      <form action="dangnhapController" method="post">
	           <div>
	           		<span class="styletext">Họ Tên:</span>  <input type="text" name="txthotendk" required="required" class="form-control input-lg">
	           		<span class="styletext">Địa chỉ:</span>  <input type="text" name="txtdiachidk" required="required" class="form-control input-lg">
	           		<span class="styletext" >Số điện thoại:</span>  <input type="text" name="txtsdtdk" required="required" class="form-control input-lg">
	           		<span class="styletext">Email:</span>  <input type="email" name="txtemaildk" required="required" class="form-control input-lg">
					<span class="styletext">Username:</span>  <input type="text" name="txtundk" required="required" class="form-control input-lg"> 
					<span class="styletext">Password:</span>  <input type="password" name="txtpassdk" required="required" class="form-control input-lg" > <br>
	           </div>
			    <div class="modal-footer">
				        <button type="button" class="btn btn-outline-success" data-bs-dismiss="modal">Close</button>
				        <button type="submit" class="btn btn-success">Đăng Ký</button>
			    </div>
					
	       </form>
      </div>
    </div>
  </div>
</div>
<!-- Slide -->
<div id="carouselExample" class="carousel slide">
  <div class="carousel-inner" style="height:500px">
    <div class="carousel-item active">
      <img src="Picture/back1.jpg" class="d-block w-100" alt="..." style="height:500px">
    </div>
    <div class="carousel-item">
      <img src="Picture/back2.jpg" class="d-block w-100" alt="..." style="height:500px">
    </div>
    <div class="carousel-item">
      <img src="Picture/back3.jpg" class="d-block w-100" alt="..." style="height:500px">
    </div>
    <div class="carousel-item">
      <img src="Picture/back4.jpg" class="d-block w-100" alt="..."style="height:500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!-- Thông tin ưu đãi  -->
<div>
	<div style="display: flex;margin-top: 20px;margin-bottom: 15px;">
		<div style="font-size: 35px; font-weight: bold; margin-left: 35px;color: #454548;">ƯU ĐÃI & KHUYỄN MÃI</div>
		<div style="width: 65%; border-bottom: 2px solid #6c3;"></div>
	</div>
	<table class="table">
	<tr>
		<td> 
			<center>
				<div class="card" style="width: 18rem;">
					  <img src="Picture/qck.jpg" class="card-img-top" alt="..." >
					  <div class="card-body">
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  </div>
				</div>	
			</center>
			
		</td>
		<td> 
			<center>
				<div class="card" style="width: 18rem;">
					  <img src="Picture/qck.jpg" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  </div>
				</div>	
			</center>
		</td>
		<td> 
			<center>
				<div class="card" style="width: 18rem;">
					  <img src="Picture/qck.jpg" class="card-img-top" alt="...">
					  <div class="card-body">
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  </div>
				</div>	
			</center>
		</td>
	</tr>
	
	</table>
	<center>
			<div style="width:93%; border-bottom: 2px solid #6c3;"></div>
	</center>

</div>
<!-- hien thi xe  -->
<div style="display: flex;margin-top: 20px;margin-bottom: 15px;">
		<div style="font-size: 35px; font-weight: bold; margin-left: 35px; color: #454548;">CÁC MẪU XE ĐẶC TRƯNG</div>
		<div style="width: 63.5%; border-bottom: 2px solid #6c3;"></div>
</div>
<table class="table table-responsive">
<%
	ArrayList<xebean> ds = (ArrayList<xebean>)request.getAttribute("dsxe");
	int n = ds.size();
	for(int i = 0; i<n;i++){
		 xebean s  = ds.get(i);%>
	<tr class="border border-white">
		<td>
			<div>
				<a href="thongsoController?mx=<%=s.getMaxe()%>&anh=<%=s.getAnh()%>" class="nav-link active"><center><img alt="" src="<%=s.getAnh()%>" style="width: 443px" loading="lazy"></center>
				<br><h3 class="styletext" style="text-align: center;"><%=s.getTenxe() %></h3>
				<br><h5 class="stylegiaban" style="text-align: center; margin-top: -22px;">Giá bán : <%=s.getGia() %> VNĐ</h5></a>
				<br><center style="margin-top: -20px;"><a href="giohangController?maxe=<%=s.getMaxe()%>&tenxe=<%=s.getTenxe()%>&anh=<%=s.getAnh()%>&gia=<%=s.getGia()%>"><img alt="" src="https://cdnl.iconscout.com/lottie/premium/thumb/order-now-4896105-4079175.gif" style=" width: 130px;border-radius: 20px;"> </a></center>		
			</div>
		</td>
		<%i++;if(i<n){s = ds.get(i);
		%>
		<td>
			<div>
				<a href="thongsoController?mx=<%=s.getMaxe()%>&anh=<%=s.getAnh()%>" class="nav-link active"><center><img alt="" src="<%=s.getAnh()%>" style="width: 443px" loading="lazy"></center>
				<br><h3 class="styletext" style="text-align: center;"><%=s.getTenxe() %></h3>
				<br><h5 class="stylegiaban" style="text-align: center; margin-top: -22px;">Giá bán : <%=s.getGia() %> VNĐ</h5></a>
				<br><center style="margin-top: -20px;"><a href="giohangController?maxe=<%=s.getMaxe()%>&tenxe=<%=s.getTenxe()%>&anh=<%=s.getAnh()%>&gia=<%=s.getGia()%>"><img alt="" src="https://cdnl.iconscout.com/lottie/premium/thumb/order-now-4896105-4079175.gif" style=" width: 130px;border-radius: 20px;"> </a></center>		
			</div>
		</td>
		<%} %>
		<%i++;if(i<n){s = ds.get(i);%>
		<td>
			<div>
				<a href="thongsoController?mx=<%=s.getMaxe()%>&anh=<%=s.getAnh()%>" class="nav-link active"><center><img alt="" src="<%=s.getAnh()%>" style="width: 443px" loading="lazy"></center>
				<br><h3 class="styletext" style="text-align: center;"><%=s.getTenxe() %></h3>
				<br><h5 class="stylegiaban" style="text-align: center; margin-top: -22px;">Giá bán : <%=s.getGia() %> VNĐ</h5></a>
				<br><center style="margin-top: -20px;"><a href="giohangController?maxe=<%=s.getMaxe()%>&tenxe=<%=s.getTenxe()%>&anh=<%=s.getAnh()%>&gia=<%=s.getGia()%>"><img alt="" src="https://cdnl.iconscout.com/lottie/premium/thumb/order-now-4896105-4079175.gif" style=" width: 130px;border-radius: 20px;"> </a></center>		
			</div>
		</td>
		<%} %>
	</tr>
	<%}%>


</table>

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
<a href="#"><img alt="" src="Picture/arup.png" style="width: 40px; position: fixed;   bottom: 7px; right: 4px;"></a>
</body>
</html>