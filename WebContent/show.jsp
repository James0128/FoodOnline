<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri='/struts-tags' prefix='s' %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>��Ʒ�б���ʾ</title>
		<link rel="stylesheet" href="/FoodOnline/css/styles.css" type="text/css" />
	</head>

	<body>
		<table width="95%" height="170" border="0" cellpadding="0"
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
				<td valign="top" align="center">
					<p>
						<img src="images/left_top.jpg" width="215" height="100" />
						<br>
						<img src="images/003.gif" width="191" height="8">
						<!-- ��ϵѭ����ʼ -->
					    <s:iterator id="mealSeries" value="#request.mealSeriesList">
						<br>
						<a href="/FoodOnline/toShowMeal?meal.mealseries.seriesId=${mealSeries.seriesId}">${mealSeries.seriesName }</a>
						<br>
						</s:iterator>
						<!-- ��ϵѭ������ -->
						
				</td>
				<td valign="top" width="80%">
					<img src="images/001.jpg" width="595" height="72" />
					<br />
					<div align="left">
				      <s:form theme="simple" method="post" action="toShowMeal">
		                <s:label value="���������" />
		        	    <s:textfield name="meal.mealName" />
		        	    <!-- ͨ�����ر��򱣴��û�ѡ����Ĳ�ϵ��ţ��ɸ��ݲ�Ʒ���ƺͲ�ϵ��ϲ�ѯ -->
						<s:hidden name="meal.mealseries.seriesId" value="%{#request.seriesId}"  />
						<s:submit value="��ѯ" />						
					  </s:form>
					</div>
					<br />
					<div style="background-image: url(images/004.gif)">
						&nbsp;
					</div>
					<div style="background-color: #FFCC99;" align="right">
						<a href="shopCart.jsp"><img src="images/lcart_cn.gif"
								width="97" height="30" border="0" /> </a>
					</div>
					<br />
					<table cellpadding="5" cellspacing="1" style="font-size: 12px;">
					    <!-- ��Ʒѭ����ʼ -->
						<s:iterator id="mealItem" value="#request.mealList" status="st">
								<s:if test="#st.getIndex()%3==0">
						<tr>
						</s:if>
							<td>
								<a href="/FoodOnline/toShowDetails?meal.mealId=${mealItem.mealId}"><img
										src="mealimages/${mealItem.mealImage }" width="148"
										height="126" border="0" /> </a>
							</td>
							<td>
								<div>
									${ mealItem.mealId}
									:
									${ mealItem.mealName}
									<br />
									<span style="text-decoration: line-through; color: gray;">ԭ�ۣ������${ mealItem.mealPrice}Ԫ</span>
									<br />
									�ּۣ������${mealItem.mealDiscount*mealItem.mealPrice}Ԫ
								</div>
								<a href="/FoodOnline/toShowDetails?meal.mealId=${mealItem.mealId}"><img src="images/detail_cn.gif" border="0" width="60" height="20" /></a>
								<a href="/FoodOnline/addtoshopcart?mealId=${mealItem.mealId }"><img src="images/buy_cn.gif" border="0" width="60" height="20" /></a>
							</td>
							<s:if test="#st.getIndex()%3==2">
						</tr>
						</s:if>
						</s:iterator>
						<!-- ��Ʒѭ����ʼ -->
						
						<!-- ��ҳ�����ӿ�ʼ -->
						<table align="right">
						  <tr>
							<td width="130"></td>
							<td width="80">
								<s:if test="pager.curPage>1">
									<A href='/FoodOnline/toShowMeal?pager.curPage=1&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>��ҳ</A>&nbsp;&nbsp;
									<A href='/FoodOnline/toShowMeal?pager.curPage=${pager.curPage-1 }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>��һҳ</A>
								</s:if>
							</td>
							<td width="80">
								<s:if test="pager.curPage < pager.pageCount">
									<A href='/FoodOnline/toShowMeal?pager.curPage=${pager.curPage+1}&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>��һҳ</A>&nbsp;&nbsp;
									<A href='/FoodOnline/toShowMeal?pager.curPage=${pager.pageCount }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>βҳ</A>
								</s:if>
							</td>
							<td>��${pager.rowCount}��¼����${pager.curPage}/${pager.pageCount}ҳ&nbsp;&nbsp;
							
							</td>
						  </tr>
						</table>						
						<!-- ��ҳ�����ӽ���-->
					
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
