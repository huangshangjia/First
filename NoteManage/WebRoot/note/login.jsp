<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<% 
	String path = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����ͳ��ϵͳ</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="<%=path %>/note/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="147" align="center" valign="bottom" background="<%=path %>/note/images/top02.gif" style="font-size:40px;font-weight:bold;color:#00C">����ͳ��ϵͳ</td>
  </tr>
</table>
<form action="<%=path %>/noteManage/login.action">
	<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
	  <tr>
	    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
	      
	      <tr>
	        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
	          <tr>
	            <td align="center"><img src="<%=path %>/note/images/ico13.gif" width="107" height="97" /></td>
	          </tr>
	          <tr>
	            <td height="40" align="center">&nbsp;</td>
	          </tr>
	          
	        </table></td>
	        <td><img src="<%=path %>/note/images/line01.gif" width="5" height="292" /></td>
	      </tr>
	    </table></td>
	    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td width="31%" height="35" class="login-text02">�û����ƣ�<br /></td>
	        <td width="69%"><input id="staffCode" name="staffCode" type="text" size="30" /></td>
	      </tr>
	      <tr>
	        <td height="35" class="login-text02">�ܡ��룺<br /></td>
	        <td><input id="password" name="password" type="password" size="33" /></td>
	      </tr>
	      <tr>
	        <td height="35">&nbsp;</td>
	        <td><input id="submitBtn" type="submit" class="right-button01" value="ȷ�ϵ�½" />
	          <input id="resetBtn" type="reset" class="right-button02" value="�� ��" /></td>
	      </tr>
	    </table></td>
	  </tr>
	</table>
</form>
</body>
</html>