<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>

	<html>
	<head>
		<!-- <titlehttp://localhost:9090/index.do>Film Match</title> -->
		<meta charset="utf-8">



		<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/main/main.css">

		<!-- 관리자 페이지  -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

		
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" />
		<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

	</head>

	<body class=""> <!-- class="sb-nav-fixed" -->
		

		<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
			<!-- Navbar Brand-->
			<a class="navbar-brand ps-3" href="${ pageContext.request.contextPath }/admin/main.do">ADMIN PAGE</a>
			
			<!-- Sidebar Toggle-->
			<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!">
				<i class="fas fa-bars"></i>
			</button>

		</nav>
		<div id="layoutSidenav">
			<div id="layoutSidenav_nav">
				<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
					<div class="sb-sidenav-menu">
						<div class="nav">
							<div class="sb-sidenav-menu-heading">MAIN</div>
							<a class="nav-link" href="../admin/main.do">
								<div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
								ADMIN MAIN
							</a>
							<!-- 기능 -->
							<div class="sb-sidenav-menu-heading">FUNCTION</div>
								<!-- 재고관리 -->
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
									<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
									INVENTORY
									<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
								</a>
								<div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordion">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="${ pageContext.request.contextPath }/admin/admin_inventory.do">재고관리</a>
									</nav>
								</div>
								
								<!-- 상품관리 -->
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
									<div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
									상품관리
									<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
								</a>
								<div class="collapse" id="collapsePages" aria-labelledby="headingTwo"
									data-bs-parent="#sidenavAccordion">
									<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
										
											<a class="nav-link" href="${pageContext.request.contextPath}/goods/insert_form.do">상품등록</a>
											<div class="sb-sidenav-collapse-arrow"></div>
										
											<a class="nav-link" href="${ pageContext.request.contextPath }/admin/goods_list_admin.do">상품리스트</a>
											<div class="sb-sidenav-collapse-arrow"></div>


											<a class="nav-link" href="${ pageContext.request.contextPath }/categories/list.do">카테고리</a>
											<div class="sb-sidenav-collapse-arrow"></div>

											<a class="nav-link" href="${ pageContext.request.contextPath }/goodsclick/list.do">상품 조회수 통계</a>
											<div class="sb-sidenav-collapse-arrow"></div>
									
									</nav>
								</div>
							<!--  -->
							<div class="sb-sidenav-menu-heading">Addons</div>
							<a class="nav-link" href="admin_member.do">
								<div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
								회원관리
							</a>
							<a class="nav-link" href="${pageContext.request.contextPath}/support/notice.do">
								<div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
								공지사항
							</a>
								<a class="nav-link" href="${pageContext.request.contextPath}/support/faq.do">
								<div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
								자주찾는질문
							</a>
								</a>
								<a class="nav-link" href="${pageContext.request.contextPath}/support/qna.do">
								<div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
								1:1 문의사항
							</a>
						</div>

						
					</div>
					<div class="sb-sidenav-footer">
						<div class="small">Logged in as:</div>
						Start Bootstrap
					</div>
				</nav>
			</div><!-- 메뉴 : layoutSidenav_nav -->
			<div id="layoutSidenav_content">





		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
			crossorigin="anonymous"></script>
		<script src="${ pageContext.request.contextPath }/js/admin/scripts.js"></script><!-- 메뉴 토글 -->
		<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script> -->
		<!-- <script src="../js/admin/demo/chart-area-demo.js"></script> -->
		<!-- <script src="../js/admin/demo/chart-bar-demo.js"></script> -->
		<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
			crossorigin="anonymous"></script>
		<script src="${ pageContext.request.contextPath }/js/admin/datatables-simple-demo.js"></script>
	</body>

	</html>