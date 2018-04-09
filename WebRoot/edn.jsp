<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/edn.css" />  
<script type='text/javascript' src="js/laydate/laydate.js"></script>
<title>Insert title here</title>
</head>
<body>
 <form action="hanbai">
	<div id="divTop">
		<div id="divTop-left">
		<!-- radio,button -->
			<input type="button" name="btn" value="登録" checked="checked" />
			<input type="button" name="btn" value="変更" />
			<input type="button" name="btn" value="削除" />
			<input type="button" name="btn" value="終了" />
		</div>
		<div id="divTop-right">
				販売先マスタ保守
		</div>
		<div id="divTop-i-l">
		<table>													<!--　　maxlength:最大文字数　　　　 pattern=""正規表現　title:エラーメッセージ　　required:必須入力チェック　　 -->
			<tr><td>略CD </td><td><input type="text" name="pyakucd"  maxlength="3" pattern="^[0-9A-Za-z]+$" title="最大3桁の半角英数を入力してください" required /></td>
				<td>漢字名称 </td><td><input type="text" name="hannm" maxlength="60" /></td>
			</tr>
			<tr><td>販売先CD</td><td><input type="text" name="hancd" maxlength="5" /></td>
				<td>仮名名称</td><td><input type="text" name="hanknm" maxlength="30" pattern="[\uFF66-\uFF9D]*" /></td>
			</tr>
		</table>
		</div>
		<div id="divTop-i-r">
		</div>
	</div>
    
    <div class="row">
       <input type="text" id="test1">
	<script>
			laydate.render({
  				elem: '#test1'
			});
		</script>
    </div>
    
	<h3>販売条件</h3>
	<div id="divBot">
		<div id="divBot-left">
		<p>販売手数料加算</p>
		<table class="t1" border="1" cellspacing="0" bordercolor="#000000" style="border-collapse:collapse;">
			<th>高品質</th>
			<th>加算手数料</th>
			<tr><td>0</td><td><input type="text" class="txt" name="hantsrks[0]" /></td></tr>
			<tr><td>1</td><td><input type="text" class="txt" name="hantsrks[1]" /></td></tr>
			<tr><td>2</td><td><input type="text" class="txt" name="hantsrks[2]" /></td></tr>
			<tr><td>3</td><td><input type="text" class="txt" name="hantsrks[3]" /></td></tr>
			<tr><td>4</td><td><input type="text" class="txt" name="hantsrks[4]" /></td></tr>
			<tr><td>5</td><td><input type="text" class="txt" name="hantsrks[5]" /></td></tr>
			<tr><td>6</td><td><input type="text" class="txt" name="hantsrks[6]" /></td></tr>
			<tr><td>7</td><td><input type="text" class="txt" name="hantsrks[7]" /></td></tr>
			<tr><td>8</td><td><input type="text" class="txt" name="hantsrks[8]" /></td></tr>
			<tr><td>9</td><td><input type="text" class="txt" name="hantsrks[9]" /></td></tr>
		</table>
		</div>
		<div id="divBot-right">
		<p>回収サイト</p>
		<table class="t1" border="1" cellspacing="0" bordercolor="#000000" style="border-collapse:collapse;">
			<th>締日</th>
			<th>回収日</th>
			<th>休日調整</th>
			<tr><td><input type="text" class="txt" name="ksyusymd[0]" /></td>
			<td><input type="text" class="txt" name="ksyuymd[0]" /></td><td><input type="text" class="txt" name="ksts[0]" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd[1]" /></td>
			<td><input type="text" class="txt" name="ksyuymd[1]" /></td><td><input type="text" class="txt" name="ksts[1]" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd[2]" /></td>
			<td><input type="text" class="txt" name="ksyuymd[2]" /></td><td><input type="text" class="txt" name="ksts[2]" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd[3]" /></td>
			<td><input type="text" class="txt" name="ksyuymd[3]" /></td><td><input type="text" class="txt" name="ksts[3]" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd[4]" /></td>
			<td><input type="text" class="txt" name="ksyuymd[4]" /></td><td><input type="text" class="txt" name="ksts[4]" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd[5]" /></td>
			<td><input type="text" class="txt" name="ksyuymd[5]" /></td><td><input type="text" class="txt" name="ksts[5]" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd[6]" /></td>
			<td><input type="text" class="txt" name="ksyuymd[6]" /></td><td><input type="text" class="txt" name="ksts[6]" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd[7]" /></td>
			<td><input type="text" class="txt" name="ksyuymd[7]" /></td><td><input type="text" class="txt" name="ksts[7]" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd[8]" /></td>
			<td><input type="text" class="txt" name="ksyuymd[8]" /></td><td><input type="text" class="txt" name="ksts[8]" /></td></tr>
			<tr><td><input type="text" class="txt" name="ksyusymd[9]" /></td>
			<td><input type="text" class="txt" name="ksyuymd[9]" /></td><td><input type="text" class="txt" name="ksts[9]" /></td></tr>
		</table>
		</div>
	</div>
	<div id="btn">
		<input type="submit" name="run" value="実行" />
		<input type="button" name="clear" value="クリア" />
	</div>
	
	<script type="text/javascript">

	</script>
	
	</form>
</body>
</html>