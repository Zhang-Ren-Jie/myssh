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
			<input type="hidden" name="master.id" value="${master.id}" />
			<tr><td>略CD </td><td><input type="text" name="master.pyakucd" value="${master.pyakucd}" maxlength="30" />  </td>
				<td>漢字名称 </td><td><input type="text" name="master.hannm" value="${master.hannm}" maxlength="60" /></td>
			</tr>
			<tr><td>販売先CD</td><td><input type="text" name="master.hancd" value="${master.hancd}" maxlength="5" /></td>
				<td>仮名名称</td><td><input type="text" name="master.hanknm" value="${master.hanknm}" maxlength="30" /></td>
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
			<tr><td>0</td><td><input type="text" class="txt" name="master.hantsrks0" value="${master.hantsrks0}" /></td></tr>
			<tr><td>1</td><td><input type="text" class="txt" name="master.hantsrks1" value="${master.hantsrks1}" /></td></tr>
			<tr><td>2</td><td><input type="text" class="txt" name="master.hantsrks2" value="${master.hantsrks2}" /></td></tr>
			<tr><td>3</td><td><input type="text" class="txt" name="master.hantsrks3" value="${master.hantsrks3}" /></td></tr>
			<tr><td>4</td><td><input type="text" class="txt" name="master.hantsrks4" value="${master.hantsrks4}" /></td></tr>
			<tr><td>5</td><td><input type="text" class="txt" name="master.hantsrks5" value="${master.hantsrks5}" /></td></tr>
			<tr><td>6</td><td><input type="text" class="txt" name="master.hantsrks6" value="${master.hantsrks6}" /></td></tr>
			<tr><td>7</td><td><input type="text" class="txt" name="master.hantsrks7" value="${master.hantsrks7}" /></td></tr>
			<tr><td>8</td><td><input type="text" class="txt" name="master.hantsrks8" value="${master.hantsrks8}" /></td></tr>
			<tr><td>9</td><td><input type="text" class="txt" name="master.hantsrks9" value="${master.hantsrks9}" /></td></tr>
		</table>
		</div>
		<div id="divBot-right">
		<p>回収サイト</p>
		<table class="t1" border="1" cellspacing="0" bordercolor="#000000" style="border-collapse:collapse;">
			<th>締日</th>
			<th>回収日</th>
			<th>休日調整</th>
			<tr><td><input type="text" class="txt" name="master.ksyusymd0" value="${master.ksyusymd0}" /></td>
			<td><input type="text" class="txt" name="master.ksyuymd0" value="${master.ksyuymd0}" /></td><td><input type="text" class="txt" name="master.ksts0" value="${master.ksts0}" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd1" value="${master.ksyusymd1}" /></td>
			<td><input type="text" class="txt" name="master.ksyuymd1" value="${master.ksyuymd1}" /></td><td><input type="text" class="txt" name="master.ksts1" value="${master.ksts1}" /></td></tr>
			<tr><td><input type="text" class="txt" name="master.ksyusymd2" value="${master.ksyusymd2}" /></td>
			<td><input type="text" class="txt" name="master.ksyuymd2" value="${master.ksyuymd2}" /></td><td><input type="text" class="txt" name="master.ksts2" value="${master.ksts2}" /></td></tr>
			<tr><td><input type="text" class="txt" name="master.ksyusymd3" value="${master.ksyusymd3}" /></td>
			<td><input type="text" class="txt" name="master.ksyuymd3" value="${master.ksyuymd3}" /></td><td><input type="text" class="txt" name="master.ksts3" value="${master.ksts3}" /></td></tr>
			<tr><td><input type="text" class="txt" name="master.ksyusymd4" value="${master.ksyusymd4}" /></td>
			<td><input type="text" class="txt" name="master.ksyuymd4" value="${master.ksyuymd4}" /></td><td><input type="text" class="txt" name="master.ksts4" value="${master.ksts4}" /></td></tr>
			<tr><td><input type="text" class="txt" name="master.ksyusymd5" value="${master.ksyusymd5}" /></td>
			<td><input type="text" class="txt" name="master.ksyuymd5" value="${master.ksyuymd5}" /></td><td><input type="text" class="txt" name="master.ksts5" value="${master.ksts5}" /></td></tr>
			<tr><td><input type="text" class="txt" name="master.ksyusymd6" value="${master.ksyusymd6}" /></td>
			<td><input type="text" class="txt" name="master.ksyuymd6" value="${master.ksyuymd6}" /></td><td><input type="text" class="txt" name="master.ksts6" value="${master.ksts6}" /></td></tr>
			<tr><td><input type="text" class="txt" name="master.ksyusymd7" value="${master.ksyusymd7}" /></td>
			<td><input type="text" class="txt" name="master.ksyuymd7" value="${master.ksyuymd7}" /></td><td><input type="text" class="txt" name="master.ksts7" value="${master.ksts7}" /></td></tr>
			<tr><td><input type="text" class="txt" name="master.ksyusymd8" value="${master.ksyusymd8}" /></td>
			<td><input type="text" class="txt" name="master.ksyuymd8" value="${master.ksyuymd8}" /></td><td><input type="text" class="txt" name="master.ksts8" value="${master.ksts8}" /></td></tr>
			<tr><td><input type="text" class="txt" name="master.ksyusymd9" value="${master.ksyusymd9}" /></td>
			<td><input type="text" class="txt" name="master.ksyuymd9" value="${master.ksyuymd9}" /></td><td><input type="text" class="txt" name="master.ksts9" value="${master.ksts9}" /></td></tr>
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