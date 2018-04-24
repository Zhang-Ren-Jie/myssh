<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/edn.css" />  
<script type='text/javascript' src="js/laydate/laydate.js"></script>
<base href="<%=basePath%>">
<title>Insert title here</title>
</head>
<body>
 <form name="fm" id="fm" action="" method="post" onSubmit="return myCheck()">
	<div id="divTop">
		<div id="divTop-left">
		 <input type = "button" value = "登録" onclick="fm.action='addmaster.action';"/>
		 <input type = "button" value = "変更" onclick="fm.action='editmaster.action';"/>
		 <input type = "button" value = "削除" onclick="fm.action='deletemaster.action';"/>
		 <input type = "button" value = "終了" onclick="window.location.href='http://localhost:8080/MySSH/edn.jsp'"/>
		</div>
		<div id="divTop-right">
				販売先マスタ保守
		</div>
		<div id="divTop-i-l">
		<table>	<!--　　maxlength:最大文字数　　　　 pattern=""正規表現　title:エラーメッセージ　　required:必須入力チェック　　 -->
			
			<tr><td>略CD </td><td><input type="text" name="pyakucd"  maxlength="30" />  </td>
				<td>漢字名称 </td><td><input type="text" name="hannm" maxlength="60" /></td>
			</tr>
			<tr><td>販売先CD</td><td><input type="text" name="hancd" maxlength="5" /></td>
				<td>仮名名称</td><td><input type="text" name="hanknm" maxlength="30" /></td>
			</tr>
		</table>
		</div>
		<div id="divTop-i-r">
		</div>
	</div>
    
    
	<h3>販売条件</h3>
	<div id="divBot">
		<div id="divBot-left">
		<p>販売手数料加算</p>
		<table class="t1" border="1" cellspacing="0" bordercolor="#000000" style="border-collapse:collapse;">
			<th>高品質</th>
			<th>加算手数料</th>
			<tr><td>0</td><td><input type="text" class="txt" name="hantsrks0" /></td></tr>
			<tr><td>1</td><td><input type="text" class="txt" name="hantsrks1" /></td></tr>
			<tr><td>2</td><td><input type="text" class="txt" name="hantsrks2" /></td></tr>
			<tr><td>3</td><td><input type="text" class="txt" name="hantsrks3" /></td></tr>
			<tr><td>4</td><td><input type="text" class="txt" name="hantsrks4" /></td></tr>
			<tr><td>5</td><td><input type="text" class="txt" name="hantsrks5" /></td></tr>
			<tr><td>6</td><td><input type="text" class="txt" name="hantsrks6" /></td></tr>
			<tr><td>7</td><td><input type="text" class="txt" name="hantsrks7" /></td></tr>
			<tr><td>8</td><td><input type="text" class="txt" name="hantsrks8" /></td></tr>
			<tr><td>9</td><td><input type="text" class="txt" name="hantsrks9" /></td></tr>
		</table>
		</div>
		<div id="divBot-right">
		<p>回収サイト</p>
		<table class="t1" border="1" cellspacing="0" bordercolor="#000000" style="border-collapse:collapse;">
			<th>締日</th>
			<th>回収日</th>
			<th>休日調整</th>
			<tr><td><input type="text" class="txt" name="ksyusymd0" /></td>
			<td><input type="text" class="txt" name="ksyuymd0" /></td><td><input type="text" class="txt" name="ksts0" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd1" /></td>
			<td><input type="text" class="txt" name="ksyuymd1" /></td><td><input type="text" class="txt" name="ksts1" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd2" /></td>
			<td><input type="text" class="txt" name="ksyuymd2" /></td><td><input type="text" class="txt" name="ksts2" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd3" /></td>
			<td><input type="text" class="txt" name="ksyuymd3" /></td><td><input type="text" class="txt" name="ksts3" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd4" /></td>
			<td><input type="text" class="txt" name="ksyuymd4" /></td><td><input type="text" class="txt" name="ksts4" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd5" /></td>
			<td><input type="text" class="txt" name="ksyuymd5" /></td><td><input type="text" class="txt" name="ksts5" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd6" /></td>
			<td><input type="text" class="txt" name="ksyuymd6" /></td><td><input type="text" class="txt" name="ksts6" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd7" /></td>
			<td><input type="text" class="txt" name="ksyuymd7" /></td><td><input type="text" class="txt" name="ksts7" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd8" /></td>
			<td><input type="text" class="txt" name="ksyuymd8" /></td><td><input type="text" class="txt" name="ksts8" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd9" /></td>
			<td><input type="text" class="txt" name="ksyuymd9" /></td><td><input type="text" class="txt" name="ksts9" /></td></tr>
		</table>
		</div>
	</div>
	<div id="btn">
		<input type="submit" name="run" value="実行" />
		<input type="button" name="clear" value="クリア" onclick="window.location.href='http://localhost:8080/MySSH/edn.jsp'" />
	</div>
	
	<script type="text/javascript">

	</script>
	
	</form>
</body>
</html>