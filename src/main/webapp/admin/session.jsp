<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true"%>

<%
	String mname= null;
	String mid =null;

	mname = (String)session.getAttribute("mname");
	mid = (String)session.getAttribute("mid");

	
%>