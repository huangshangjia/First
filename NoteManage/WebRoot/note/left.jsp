<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<html>
<%@ include file="common.jsp" %>
<head>
<title>故障统计系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(<%=path %>/note/images/left.gif);
}
-->
</style>
<link href="<%=path %>/note/css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=javaScript>

</SCRIPT>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="<%=path %>/note/images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="<%=path %>/note/images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<span class="left-font02">king</span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>

		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="<%=path %>/note/images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="<%=path %>/note/addNote.jsp" target="mainFrame" class="left-font03" onClick="" >故障录入</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>

		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img7" id="img7" src="<%=path %>/note/images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="" >故障统计</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>

        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="<%=path %>/note/images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="" >故障配置</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
	  </TD>
  </tr>
  
</table>
</body>
</html>
