<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri='/struts-tags' prefix='s' %>
<html>
	<head>
		<title>�޸ĸ�����Ϣ</title>		
		<link rel="stylesheet" href="/FoodOnline/css/styles.css" type="text/css" />
		<script type="text/javascript">
			function usercheck(){
				if(document.ufrm.username.value.length==0){
					alert("�������û���");
					return false;
				}
				if(document.ufrm.userpwd.value.length==0){
					alert("����������");
					return false;
				}
				return true;
			}
			function admincheck(){
				if(document.afrm.adminname.value.length==0){
					alert("�������¼��");
					return false;
				}
				if(document.afrm.adminpwd.value.length==0){
					alert("����������");
					return false;
				}
				return true;
			}
		</script>
	</head>

	<body>
		<table width="90%" height="629" border="0" cellpadding="0"
			cellspacing="0" align="center">
			<tr>
				<td width="200" height="101">
					<img src="images/jb_logo.jpg" width="64" height="32" />
					<strong><span
						style="font-size: 20px;">���϶���ϵͳ</span> </strong>
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
				<td valign="top" align="center">
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
                    <form action="modifyUsers" method="post" name="frm"
						onsubmit="return check()">
						<table width="100%" cellspacing="0" cellpadding="3" align="center"
							style="text-align:center; border:1px #cccccc solid;">
							<tr style="background-color:#CCCCFF;">
								<td colspan="2">
									�û�������Ϣ
								</td>
							</tr>
							<tr>
								<td align="right" style="width:320px;" >
									��¼���ƣ�
								</td>
								<td align="left">		
								    <input type="hidden" name="user.id" style="width:220px;" value="${sessionScope.user.id }" />						    
									<input type="text" name="user.loginName" style="width:220px;" value="${sessionScope.user.loginName }" />									
								</td>
							</tr>
							<tr>
								<td align="right" style="width:320px;">
									��¼���룺
								</td>
								<td align="left">
									<input type="password" name="user.loginPwd" style="width:220px;" value="${sessionScope.user.loginPwd }"  />									
								</td>
							</tr>							
							<tr>
								<td align="right" style="width:320px;">
									��ʵ������
								</td>
								<td align="left">
									<input type="text" name="user.trueName" style="width:220px;" value="${sessionScope.user.trueName }"  />									
								</td>
							</tr>						
							<tr>
								<td align="right" style="width:320px;">
									�绰���룺
								</td>
								<td align="left">
									<input type="text" name="user.phone" style="width:220px;" value="${sessionScope.user.phone }"  />									
								</td>
							</tr>
							<tr>
								<td align="right" style="width:320px;">
									�����ʼ���
								</td>
								<td align="left">
									<input type="text" name="user.email" style="width:220px;" value="${sessionScope.user.email }"  />									
								</td>
							</tr>
							<tr>
								<td align="right" style="width:320px;">
									Ĭ�ϵ�ַ��
								</td>
								<td align="left">
									<input type="text" name="user.address" style="width:220px;" value="${sessionScope.user.address }"  />									
								</td>
							</tr>
							<tr style="background-color:#CCCCFF;">
								<td colspan="2">
									<input type="submit" value="�޸�" />
								</td>
							</tr>
						</table>
					</form>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br>
					<hr width=100%>
					<br>					
					<br>
					<br>
				</td>
			</tr>
		</table>
	</body>
</html>
