<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
<script type="text/javascript">
 //重新计算按钮提交
   function accountMonth(){
     document.caozuo.action="wage.do?operate=accountMonth ";
  document.caozuo.submit();
  alert(document.caozuo.action);
   }
   //保存记录提交
      function saveWageTohistory(){
     document.caozuo.action="wage.do?operate=SaveWageTohistory";
  document.caozuo.submit();
  alert(document.caozuo.action);
   }
</script>
</head>
<body>
<form action="" method="post" name="caozuo">
<input type="button" value="重新计算" onclick="accountMonth()" class="botton"/>
<input type="button" value="保存记录" onclick="saveWageTohistory()" class="botton"/>
</form>
</body>
</html>


<form name="fm" id="fm" method="post">
......
<input type="button" name="btn1" onclick="document.fm.action='xxx.jsp';document.fm.submit();" value="tj"/>
<input type="button" name="btn2" onclick="document.fm.action='yyy.jsp';document.fm.submit();" value="tj"/>

</form>