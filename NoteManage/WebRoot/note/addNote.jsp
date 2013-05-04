<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
%>
<html>
<head>
<title>故障统计系统</title>
<link rel="stylesheet" rev="stylesheet" href="<%=path %>/note/css/style.css" type="text/css" media="all" />
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

	<body class="ContentBody">
		<form action="" method="post" enctype="multipart/form-data" name="form" target="sypost">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
					<tr>
						<th class="tablestyle_title">录入故障</th>
					</tr>
					<tr>
						<td class="CPanel">

							<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
								<TR>
									<TD width="100%">
										<fieldset style="height: 100%;">
											<legend>
												录入故障
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">
												<tr>
													<td width="11%" align="right" nowrap>
														店名:
													</td>
													<td colspan="3">
														<select name="select1" style= "width:460pt">
															<option selected="selected" value="1">田阳店</option>
															<option value="2">田东店</option>
															<option value="3">苹果店</option>
															<option value="4">其他店</option>
														</select>
													</td>
												</tr>
												<tr>
													<td width="11%" align="right" nowrap>
														故障原因:
													</td>
													<td colspan="3">
														<select name="select1" style= "width:460pt">
															<option selected="selected" value="1">故障原因1</option>
															<option value="2">故障原因2</option>
															<option value="3">故障原因3</option>
															<option value="4">故障原因4</option>
															<option value="4">其他原因</option>
														</select>
													</td>
												</tr>
												<tr>
													<td width="11%" nowrap align="right">
														备注:
													</td>
													<td colspan="3">
														<textarea name="textarea" cols="100" rows="15"></textarea>
													</td>
												</tr>
											</table>
											<br />
										</fieldset>
									</TD>
								</TR>
							</TABLE>
						</td>
					</tr>
					<TR>
						<TD colspan="2" align="center" height="50px">
							<input type="button" name="Submit" value="提交" class="button" onclick="alert('发送成功！');" />
							<input type="button" name="Submit2" value="返回" class="button" onclick="" />
						</TD>
					</TR>
				</TABLE>
			</div>
		</form>
	</body>
</html>