<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri='/struts-tags' prefix='s' %>

<html>
	<head>
		<title>���ﳵҳ��</title>
		<link rel="stylesheet" href="/FoodOnline/css/styles.css" type="text/css" />		
	</head>

	<body>
		<table width="90%" height="629" border="0" cellpadding="0"
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
					style="background-image:url(images/001.gif);" align="center">
					|
					<a href="/FoodOnline/toShowMeal">��վ��ҳ</a> |
					<s:if test="(#session.admin==null) && (#session.user==null)">					
					<a href="register.jsp">�û�ע��</a> |
					<a href="login.jsp?role=user">�û���¼</a> |
					<a href="login.jsp?role=admin">����Ա��¼</a> |
					</s:if>
					<s:if test="#session.user!=null">
					<a href="modifyMyInfo.jsp">�޸ĸ�����Ϣ</a> |
					<a href="shopCart.jsp">�ҵĹ��ﳵ</a> |
					<a href="/FoodOnline/toMyOrders">�ҵĶ���</a> |
					<a href="/FoodOnline/logOut?type=userlogout">ע��</a> &nbsp;&nbsp; &nbsp;&nbsp;
					<font style="color: red">��ӭ����${sessionScope.user.trueName }</font>					
					</s:if>
					<s:if test="#session.admin!=null">
					<a href="/FoodOnline/toAddMeal">��Ӳ�Ʒ</a> |
					<a href="/FoodOnline/toManageMeal">�����Ʒ</a> |
					<a href="/FoodOnline/toManageOrders">��������</a> |
					<a href="/FoodOnline/logOut?type=adminlogout">ע��</a> &nbsp;&nbsp; &nbsp;&nbsp;
					<font style="color: red">��ӭ����${sessionScope.admin.loginName }</font>
					</s:if>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" >
					<p>
						<img src="images/left_top.jpg" width="215" height="100" />
						<br>
						<img src="images/003.gif" width="191" height="8">
				</td>
				<td valign="top" width="80%">
					<img src="images/001.jpg" width="595" height="72" />
					<br />					
					<div style="background-image:url(images/004.gif)">
						&nbsp;
					</div>
					
					<br />
					<img src="images/zdkf.jpg" align="top" />
					���Ĺ��ﳵ����������Ʒ
					<br />
					<hr />					
					<table align="center" width="95%" cellspacing="0" cellpadding="3"
						style="text-align:center; border:1px #cccccc solid;">
						<tr style="background-color:#CCCCFF;">
							<td>���</td>
							<td>��Ʒ����</td>
							<td>����</td>
							<td>����</td>
							<td>���</td>
							<td>ɾ��</td>
						</tr>				
						<s:set var="sumPrice" value="0"  />								
						<s:iterator id="cartItem" value="#session.cart">
						<tr style="background-color:#FFFFFF;">						  
							<td>								
								<s:property value="value.meal.mealId"/>
							</td>
							<td>
								<s:property value="value.meal.mealName"/>
							</td>
							<td>
								��<s:property value="value.meal.mealPrice"/>
							</td>
							<td>								
								<input type="text"  value="${value.quantity}" size="10" 
								onchange="window.location='updateSelectedQuantity?mealId=${value.meal.mealId}&quantity='+this.value;">
							</td>
							<td>
								��<s:property value="value.quantity*value.meal.mealPrice"/>
							</td>
							<td>
								<a href="deleteSelectedOrders?mealId=${value.meal.mealId}">ɾ��</a>							
							</td>
						</tr>	
						    <s:set var="sumPrice" value="#sumPrice+value.quantity*value.meal.mealPrice" />						    			
						</s:iterator>				
						<tr style="background-color:#CCCCFF;">
							<td>
								�ϼ�
							</td>
							<td>
								-
							</td>
							<td>
								-
							</td>
							<td>
								-
							</td>
							<td>
								����<s:property value="#sumPrice"  /> 
								<s:set var="sumPrice" value="#sumPrice" scope="session" />
							</td>
							<td>
								-
							</td>
						</tr>					
					</table>
					
					<br />
					<table width="300" cellspacing="0" cellpadding="4" align="center"
						style="text-align:center; border:1px #cccccc solid;">
						<tr style="background-color:#CCCCFF;">
							<td>
								<a href="/FoodOnline/clearCart">��չ��ﳵ</a>
							</td>
							<td>
								<a href="/FoodOnline/toShowMeal">��������</a>
							</td>
							<td>
								<a href="/FoodOnline/addOrders">���ɶ���</a>
							</td>
						</tr>
					</table>
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
