<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
%>
<html>
<head>
<title>����ͳ��ϵͳ</title>
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
						<th class="tablestyle_title">¼�����</th>
					</tr>
					<tr>
						<td class="CPanel">

							<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
								<TR>
									<TD width="100%">
										<fieldset style="height: 100%;">
											<legend>
												¼�����
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">
												<tr>
													<td width="11%" align="right" nowrap>
														����:
													</td>
													<td colspan="3">
														<select name="select1" style= "width:460pt">
															<option selected="selected" value="1">������</option>
															<option value="2">�ﶫ��</option>
															<option value="3">ƻ����</option>
															<option value="4">������</option>
														</select>
													</td>
												</tr>
												<tr>
													<td width="11%" align="right" nowrap>
														����ԭ��:
													</td>
													<td colspan="3">
														<select name="select1" style= "width:460pt">
															<option selected="selected" value="1">����ԭ��1</option>
															<option value="2">����ԭ��2</option>
															<option value="3">����ԭ��3</option>
															<option value="4">����ԭ��4</option>
															<option value="4">����ԭ��</option>
														</select>
													</td>
												</tr>
												<tr>
													<td width="11%" nowrap align="right">
														��ע:
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
							<input type="button" name="Submit" value="�ύ" class="button" onclick="alert('���ͳɹ���');" />
							<input type="button" name="Submit2" value="����" class="button" onclick="" />
						</TD>
					</TR>
				</TABLE>
			</div>
		</form>
	</body>
</html>