<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inventory Management</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/admin/styles.css" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/main/main.css">
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

<script type="text/javascript">


</script>

</head>
<body class=""> <!-- class="sb-nav-fixed" -->
    <!-- header -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/main/header.jsp"/>
   <!-- menu -->
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/admin/admin_menu.jsp"/>
    
    <main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">상품관리</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">상품리스트</li>
            </ol>
            <div class="row">
           
            </div>
            <div class="row">
           
            </div>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table me-1"></i>
                    상품 조회 통계
                </div>
                <div class="card-body">
                    
                </div>
            </div>
        </div>
    </main>
    
    
    
    <!-- footer -->
    
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/admin/admin_footer.jsp"/>
</biv>
   
    



</body>
</html>