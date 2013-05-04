<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>故障统计系统</title>
	</head>

	<frameset rows="59,*" cols="*" frameborder="no" border="0"
		framespacing="0">
		<frame src="<%=path %>/note/top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
		<frameset cols="213,*" frameborder="no" border="0" framespacing="0">
			<frame src="<%=path %>/note/left.jsp" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" />
			<frame src="<%=path %>/note/mainFrame.jsp" name="mainFrame" id="mainFrame" title="mainFrame" />
		</frameset>
	</frameset>
	<noframes>
		<body>
		</body>
	</noframes>
</html>