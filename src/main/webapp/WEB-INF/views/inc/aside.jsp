<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String a = (String) request.getAttribute( "javax.servlet.forward.request_uri" );
%>
<!-- <div id="sidebar" class="sidebar d-flex flex-column justify-content-between">
    <span>
        <a href="/index"><i class="fas fa-user fa-lg" style="color: gray;"></i></a>
        <a href="/menu/chat"><i class="fas fa-comment fa-lg" style="color: gray;"></i></a>
        <a href="/menu/settings"><i class="fas fa-ellipsis-h fa-lg" style="color: gray"></i></a>
    </span>
    <span>
        <a href="#"><i class="fas fa-cog fa-lg" style="color: gray;"></i></a>
        <a href="#"><i class="far fa-bell fa-lg" style="color: gray;"></i></a>
    </span>
</div> -->

<!-- <div id="sidebar_pc" class="text-white sidebar sidebar_pc d-md-flex flex-column justify-content-between d-none">
    <span>
        <a href="/index"><i class="fas fa-user fa-lg" ></i></a>
        <a href="/menu/chat"><i class="fas fa-comment fa-lg"></i></a>
        <a href="/menu/settings"><i class="fas fa-ellipsis-h fa-lg"></i></a>
    </span>
    <span>
        <a href="#"><i class="fas fa-cog fa-lg"></i></a>
        <a href="#"><i class="far fa-bell fa-lg"></i></a>
    </span>
</div> -->
<div id="sidebar_sensitive" class="d-flex flex-row flex-md-column justify-content-between p-3 h-md-100vh sticky-top sticky-md-top">
    <div class="d-flex flex-row flex-md-column">
        <a href="/index" class="text-white p-2<%=a.indexOf("index")>-1?" text-shadow":""%>"><i class="fas fa-user fa-lg"></i></a>
        <a href="/menu/chat" class="text-white p-2<%=a.indexOf("chat")>-1?" text-shadow":""%>"><i class="fas fa-comment fa-lg"></i></a>
        <a href="/menu/settings" class="text-white p-2<%=a.indexOf("settings")>-1?" text-shadow":""%>"><i class="fas fa-ellipsis-h fa-lg"></i></a>
    </div>
    <div class="d-flex flex-row flex-md-column">
        <a id="bell" href="#none" class="text-white p-2"><i class="far fa-bell fa-lg"></i></a>
        <a href="#" class="text-white p-2"><i class="fas fa-cog fa-lg"></i></a>
    </div>
</div>
<div data-type="popBell" data-status="on" class="position-fixed top-50 start-50 translate-middle p-5 bg-black-50 rounded-5"><i class="far fa-bell-slash fa-5x py-2"></i></div>