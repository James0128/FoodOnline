<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri='/struts-tags' prefix='s' %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>��Ӳ�Ʒ</title>
		<link rel="stylesheet" href="/foodonline/css/styles.css" type="text/css" />
	</head>

	<body>
		<table width="90%" height="170" border="0" cellpadding="0"
			cellspacing="0" align="center">
			<tr>
				<td width="200" height="101">
					<img src="images/logo.jpg" width="200" height="100" />
				</td>
				<td width="640" style="padding-left: 40px;">
					
				</td>
			</tr>
			<tr>
				<td height="41" colspan="2"
					style="background-image: url(images/001.gif);" align="center">
					|
					<a href="/foodonline/toShowMeal">��վ��ҳ</a> |
					<s:if test="(#session.admin==null) && (#session.user==null)">					
					<a href="register.jsp">�û�ע��</a> |
					<a href="login.jsp?role=user">�û���¼</a> |
					<a href="login.jsp?role=admin">����Ա��¼</a> |
					</s:if>
					<s:if test="#session.user!=null">
					<a href="modifyMyInfo.jsp">�޸ĸ�����Ϣ</a> |
					<a href="shopCart.jsp">�ҵĹ��ﳵ</a> |
					<a href="/foodonline/toMyOrders">�ҵĶ���</a> |
					<a href="/foodonline/logOut?type=userlogout">ע��</a> &nbsp;&nbsp; &nbsp;&nbsp;
					<font style="color: red">��ӭ����${sessionScope.user.trueName }</font>					
					</s:if>
					<s:if test="#session.admin!=null">
					<a href="/foodonline/toAddMeal">��Ӳ�Ʒ</a> |
					<a href="/foodonline/toManageMeal">�����Ʒ</a> |
					<a href="/foodonline/toManageOrders">��������</a> |
					<a href="/foodonline/logOut?type=adminlogout">ע��</a> &nbsp;&nbsp; &nbsp;&nbsp;
					<font style="color: red">��ӭ����${sessionScope.admin.loginName }</font>
					</s:if>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center">
					<p>
						<img src="images/left_top.jpg" width="215" height="100" />
						<br>
						<img src="images/003.gif" width="191" height="8">
				</td>
				<td valign="top" width="80%">
					<img src="images/001.jpg" width="595" height="72" />
					<br />
					<div style="background-image: url(images/004.gif)">
						&nbsp;
					</div>
					<div style="background-color: #FFCC99;" align="center">
						��Ӳ�Ʒ
					</div>
					<br />
					<s:form action="doAddMeal" method="post" enctype="multipart/form-data">
						<table align="center">
							<s:textfield name="meal.mealName" label="����" />
							<s:select name="meal.mealseries.seriesId" label="��ϵ" list="#request.mealSeriesList" listKey="seriesId" listValue="seriesName" />  
							<s:textfield name="meal.mealSummarize" label="ժҪ" />
							<s:textfield name="meal.mealDescription" label="����" />
							<s:textfield name="meal.mealPrice" label="�۸�" />
							<s:file name="doc" label="ͼƬ" />
							<s:submit value="ȷ��" align="center"/>
						</table>
					</s:form>
			  </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br>
					<hr width=100%>					
					<br>
				</td>
			</tr>
		</table>
	</body>
</html>
