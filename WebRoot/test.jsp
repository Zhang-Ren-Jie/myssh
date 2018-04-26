<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>使用s:itertor标签迭代Map</title>
</head>
<body>
<table border="1" width="240">
<tr>
   <th>12</th>
   <th>123</th>
</tr>
<s:iterator value="#{'Spring2.0:'a' , 'J2EE':'2','Ajax':'3'}" id="score" status="st">
<tr <s:if test="#st.odd">style="background-color:#bbbbbb"</s:if>>
   <td><s:property value="key"/></td>
   <td><s:property value="value"/></td>
</tr>
</s:iterator>
</table>
</body>
</html>