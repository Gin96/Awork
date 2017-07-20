<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理爱情语</title>
    <style type="text/css">
    	a{
    		text-decoration: none;
    	}
    </style>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/messages_zh.min.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	
  	<script type="text/javascript">
  	$(function(){
  		$("#del").click(function(){
  			var i=confirm("确定删除吗？");
  			if(i==false){
  				return false;
  			}
  		});
  		
  		$("#add").click(function(){
  			$("#f2").css("display","block");
  		});
  		
  		$("#qu").click(function(){
  			$("#f2").css("display","none");
  		});
  	});
  	</script>
  </head>
  <body>
	  <div><!-- 显示美文选择 -->
	  	<form action="HaiJiaoServlet" style="margin-top: 200px;">
	  		<p align="center" style="color: red;font-size: 18px;">
	  			<c:if test="${addmei!=null }">
	  				${addmei }
	  			</c:if>
	  		</p>
		    <table align="center" style="font-size: 30px;">
		    	<tr>
		    		<td>您想显示爱情小语在天涯海角页面，则单击确定！</td>
		    		<td>如果您要删除爱情小语，则单击删除！</td>
		    	</tr>
		    	<c:forEach var="v" items="${adlist }">
		    		<tr>
		    			<td>
		    				《${v.ming }》<input type="radio" value="${v.id }" name="mid" checked="checked"/>
		    			</td>
		    			<td>
		    				<a href="AdMeidelServlet?id=${v.id}"><input type="button" value="删除" id="del"  style="font-size: 25px;"/></a>
		    			</td>
		    		</tr>
		    	</c:forEach>
		    	<tr>
		    		<td colspan="2" align="center"><input type="submit" value="确定"  style="font-size: 25px;"/><input type="reset" value="重置"  style="font-size: 25px;"/> </td>
		    	</tr>
		    </table>
	    </form>
	    <p align="center"><input type="button" value="添加爱语" id="add"  style="font-size: 25px;"/><input type="button" value="取消添加" id="qu" style="font-size: 25px;"/></p>
	    <form action="AdMeiaddServlet"  style="display:none;"  id="f2"><!-- 添加美文 -->
	    	<table align="center" style="font-size: 25px;">
	    		<tr>
	    			<td>题目</td>
	    			<td><input type="text" name="ming" placeholder="请输入爱语题目" style="width: 500px; height: 35px;font-size: 22px;"/></td>
	    		</tr>
	    		<tr>
	    			<td>第一句</td>
	    			<td><input type="text" name="diyi" placeholder="请输入爱语第一句" style="width: 500px; height: 35px;font-size: 22px;"/></td>
	    		</tr>
	    		<tr>
	    			<td>第二句</td>
	    			<td><input type="text" name="dier" placeholder="请输入爱语第二句" style="width: 500px; height: 35px;font-size: 22px;"/></td>
	    		</tr>
	    		<tr>
	    			<td>第三句</td> 
	    			<td><input type="text" name="disan" placeholder="请输入爱语第三句" style="width: 500px; height: 35px;font-size: 22px;"/></td>
	    		</tr>
	    		<tr>
	    			<td>第四句</td>
	    			<td><input type="text" name="disi" placeholder="请输入爱语第四句" style="width: 500px; height: 35px;font-size: 22px;"/></td>
	    		</tr>
	    		<tr>
	    			<td>第五句</td>
	    			<td><input type="text" name="diwu" placeholder="请输入爱语第五句" style="width: 500px; height: 35px;font-size: 22px;"/></td>
	    		</tr>
	    		<tr>
	    			<td>第六句</td>
	    			<td><input type="text" name="diliu" placeholder="请输入爱语第六句" style="width: 500px; height: 35px;font-size: 22px;"/></td>
	    		</tr>
	    		<tr>
	    			<td>第七句</td>
	    			<td><input type="text" name="diqi" placeholder="请输入爱语第七句" style="width: 500px; height: 35px;font-size: 22px;"/></td>
	    		</tr>
	    		<tr>
	    			<td>第八句</td>
	    			<td><input type="text" name="diba" placeholder="请输入爱语第八句" style="width: 500px; height: 35px;font-size: 22px;"/></td>
	    		</tr>
	    		<tr>
	    			<td>第九句</td>
	    			<td><input type="text" name="dijiu" placeholder="请输入爱语第九句" style="width: 500px;height: 35px;font-size: 22px; "/></td>
	    		</tr>
	    		<tr>
	    			<td>第十句</td>
	    			<td><input type="text" name="dishi" placeholder="请输入爱语第十句" style="width: 500px;height: 35px;font-size: 22px;"/></td>
	    		</tr>
	    		<tr>
	    			<td>
	    				<input type="submit" value="添加"/>
	    				<input type="button" value="重置"/>
	    			</td>
	    		</tr>
	    	</table>
	    </form>
	 </div>
  </body>
</html>
