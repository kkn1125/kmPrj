<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%
	String path = (String) request.getAttribute( "javax.servlet.forward.request_uri" );
	String nowId = (String) session.getAttribute("sessionId");
	if(path.indexOf("login")==-1 && nowId==null){
		response.sendRedirect("/secu/login");
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
	
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    
    <!-- sun editor -->
	<link href="https://cdn.jsdelivr.net/npm/suneditor@latest/dist/css/suneditor.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/suneditor@latest/dist/suneditor.min.js"></script>
	<!-- languages (Basic Language: English/en) -->
	<script src="https://cdn.jsdelivr.net/npm/suneditor@latest/src/lang/ko.js"></script>
	
	<!-- main.css -->
    <link rel="stylesheet" href="/resources/assets/dist/css/main.css">
    
	<title><tiles:insertAttribute name="title" /></title>
</head>
<body>

	<div class="d-md-flex">
	<!-- aside -->
	<tiles:insertAttribute name="aside" />
	<!-- aside -->
	
	<!-- body -->
	<tiles:insertAttribute name="body" />
	<!-- body -->
	</div>

	<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
    <script src="/resources/assets/dist/js/main.js"></script>
    <script>
        // $.ajax({
        //     url:'header.html',
        //     type:'get',
        //     data:{id:'test'},
        //     contentType:'application/x-www-form-urlencoded',
        //     dataType:'html',
        //     // dataType:'application/text',
        //     success:function(data){
        //         console.log('success');
        //         $('#header').html(data);
        //     },
        //     error:function(xhr, err, method){
        //         console.error(err);
        //         console.error(method);
        //     }
        // })
        // $('#header').load('header.html');
        // $('#footer').load('footer.html');
    </script>
</body>
</html>