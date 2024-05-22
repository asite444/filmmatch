<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inventory Management</title>

<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="${ pageContext.request.contextPath }/css/admin/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="../css/main/main.css">
 
<script>

$(document).ready(function(){
    var ctrlPressed = false;
    var shiftPressed = false;
    var isMultiple = false;
    var selectHeight = 300; 
    
    $('#interest').height(selectHeight);
    $('#cate_sub_id').height(selectHeight);

    $(document).keydown(function(event){
        if(event.which === 17) { // Ctrl 키의 keyCode는 17입니다.
            ctrlPressed = true;
        } else if (event.which === 16) { // Shift 키의 keyCode는 16입니다.
            shiftPressed = true;
        }
    }).keyup(function(event){
        if(event.which === 17) {
            ctrlPressed = false;
        } else if (event.which === 16) {
            shiftPressed = false;
        }
    });

      $('#interest').on('mousedown keydown', function(event) {
        if (ctrlPressed || shiftPressed) {
            event.preventDefault();
        }
    });

     $('#interest').change(function() {
        var selectedOption = $(this).val()[0];
        console.log("선택된 옵션:", selectedOption);
        if (selectedOption != null) {
            var $subCate = $('#cate_sub_id');
            $subCate.empty();

            $.ajax({
                url: '../goods/getSubcategories.do',
                type: 'GET',
                dataType: "json",
                data: { cate_parent_id: selectedOption },
                success: function(data) {
                    $.each(data.cate_sub_list, function(index, item) {
                        $subCate.append('<option value="' + item.cate_id + '">' + item.cate_sub + '</option>');
                    });
                }
            });
        }
    });

});


</script>

</head>
<body class=""> <!-- class="sb-nav-fixed" -->
    <!-- header -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/main/header.jsp"/>
   <!-- menu -->
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/admin/admin_menu.jsp"/>
    
    <main>
        <div class="container-fluid px-4" >
            <h1 class="mt-4" style="text-align:center">카테고리 관리</h1>
 
           
            <div class="row">
                <div class="col-xl-6">
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-chart-area me-1"></i>
                            대분류
                        </div>
                        <div class="card-body"  style="height: 300px; overflow-y: auto;">
                        <canvas id="myAreaChart" width="100%" height="40">                       </canvas>
                         <select id="interest" name="interest" size='10' multiple="multiple"  height="1000">

                            	<c:forEach var="vo" items="${list}" varStatus="i">
                            <option value="${vo.cate_id}">${vo.cate_sub}</option>      
                            	</c:forEach>
                        </select>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-chart-bar me-1"></i>
                            소분류
                        </div>
                        <div class="card-body" style="height: 300px; overflow-y: auto;"><canvas id="myBarChart" width="100%" height="40"></canvas>

                    <select name="cate_id" id="cate_sub_id" style="width:30%"  multiple="multiple"  height="1000">
				
			</select>

                        </div>
                    </div>
                </div>
            </div>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table me-1"></i>
                    1:1문의사항
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