
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>

<style>
	#prat1{
		height: 160px;
		float: up;
		border: 1px solid black
		}
	#prat2{
		height: 400px;
		float: up;
		border: 1px solid black
		}
	#prat3{
		height: 200px;
		float: up;
		border: 1px solid black
		}
	#prat4{
		height: 100px;
		float: up;
		border: 1px solid black

		}
</style>




    <script src="scripts/jquery-1.7.2.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(function () {
        $("#btninfo").click(function () {
            $("#test").find("input[type='text']").each(function(){
                if ($(this).val() == "") {
                    {alert("带星号的不能为空！");return false;}
                }
            })
        })
    })
    </script>




</head>
<body>
  
		  
    	<form name="fm" id="fm" action="" method="post">
    	
	<div id="prat1">
			
		
		 <!--上のボウダン  -->																							
		 <input type = "button" value = "登録" onclick="fm.action='addmaster.action';"/>
		 <input type = "button" value = "変更" onclick="fm.action='editmaster.action';"/>
		 <input type = "button" value = "削除" onclick="fm.action='deletemaster.action';"/>
		 <input type = "button" value = "終了" onclick="window.location.href='http://localhost:8080/MySSH/index2.jsp'"/>
		 

		<center><span style="background:#A9A9A9;">単価マスター保守</span></center> 
		<center><span style="background:#A9A9A9;">メッセージ表示:${masterAct.getErrmsg()}</span></center> 
		
				屠畜日付 
		<input  type="text" id="UIYMD" name="master.UIYMD" value="${master.UIYMD}" >
		<center>
		<script src="js/laydate/laydate.js"></script> <!-- 改成你的路径 -->
		
		<script>
			//执行一个laydate实例
			laydate.render({
 			 elem: '#UIYMD' //指定元素
				});
			
		</script>
		</center>
		
	</div>
	
	

 

	<div id="prat2" >
		単価入力

		<table align="center" border="1">
			<tr>
		  		<th>No.</th>
		 		<th>市場名 </th>
		 		<th>安値 </th>
		 		<th>高値</th>
				<th>加重</th>
			</tr>
			<tr>
				<td>1 </td>
		  		<td>東京 </td>
		  		<td><input  type="text" name="master.TKYN"value="${master.TKYN}" maxlength="5"
		  		onkeyup="if(/\D/.test(this.value)){alert('半角数字を入力してください');this.value='';}"/></td>
		 		<td><input type="text" name="master.TKTN" value="${master.TKTN}"maxlength="5"
		  		onkeyup="if(/\D/.test(this.value)){alert('半角数字を入力してください');this.value='';}"/></td>
		 		<td><input type="text" name="master.TKKJ" value="${master.TKKJ}"maxlength="5"
		  		onkeyup="if(/\D/.test(this.value)){alert('半角数字を入力してください');this.value='';}"/></td>
			</tr>
			<tr>
				<td>2 </td>
		  		<td>さいたま </td>
		  		<td><input type="text"  name="master.STYN" value="${master.STYN}"maxlength="5"
		  		onkeyup="if(/\D/.test(this.value)){alert('半角数字を入力してください');this.value='';}"/></td>
		 		<td><input type="text"  name="master.STTN" value="${master.STTN}"maxlength="5"
		  		onkeyup="if(/\D/.test(this.value)){alert('半角数字を入力してください');this.value='';}"/></td>
				<td><input type="text"  name="master.STKJ" value="${master.STKJ}"maxlength="5"
		  		onkeyup="if(/\D/.test(this.value)){alert('半角数字を入力してください');this.value='';}"/></td>
			</tr>
			<tr>
				<td>3 </td>
		 		<td>横浜  </td>
		 		<td><input type="text"  name="master.YHYN" value="${master.YHYN}"maxlength="5"
		  		onkeyup="if(/\D/.test(this.value)){alert('半角数字を入力してください');this.value='';}"/></td>
		 		<td><input type="text"  name="master.YHTN" value="${master.YHTN}"maxlength="5"
		  		onkeyup="if(/\D/.test(this.value)){alert('半角数字を入力してください');this.value='';}"/></td>
				<td><input type="text"  name="master.YHKJ" value="${master.YHKJ}"maxlength="5"
		  		onkeyup="if(/\D/.test(this.value)){alert('半角数字を入力してください');this.value='';}"/></td>
			</tr>
			<tr>
				<td>4 </td>
		  		<td>その他 </td>
				<td><input type="text"  name="master.SYN" value="${master.SYN}"maxlength="5"
		  		onkeyup="if(/\D/.test(this.value)){alert('半角数字を入力してください');this.value='';}"/></td>
		 		<td><input type="text"  name="master.STN" value="${master.STN}"maxlength="5"
		  		onkeyup="if(/\D/.test(this.value)){alert('半角数字を入力してください');this.value='';}"/></td>
		 		<td><input type="text"  name="master.SKJ" value="${master.SKJ}"maxlength="5"
		  		onkeyup="if(/\D/.test(this.value)){alert('半角数字を入力してください');this.value='';}"/></td>
			</tr>
		</table>
	</div>
	
	<div id="prat3">
		単価表示
		<table align="center"  border="1">
			<tr>
	  			<td>3市場平均単価</td>
	 			<td><input type="text"   name="master.SSHKTK3" value="${master.SSHKTK3}"maxlength="7"
		  		 readonly="readonly"/></td>
			</tr>
	
			<tr>
	 			<td colspan="2">*(3市場→東京.さいたま.横浜)</td>
			</tr>
	
			<tr>
	  			<td>4市場平均単価</td>
				<td><input type="text" name="master.SSHKTK4" value="${master.SSHKTK4}"maxlength="7"
		  		readonly="readonly"/></td>
			</tr>
		</table>
 	</div>
 	
	<div id="prat4"  align="center">
		更新年月日 
		<input  type="text" id="KSYMD" name="master.KSYMD" value="${master.KSYMD}" >
		<center>
		<script src="js/laydate/laydate.js"></script> <!-- 改成你的路径 -->
		
		<script>
			//执行一个laydate实例
			laydate.render({
 			 elem: '#KSYMD' //指定元素
				})
		</script>
		</center>
	</div>


	 <div style = "text-align:right;">
	 
	 <!--下のボウダン  -->		
	 <input type="submit" value="実行"  id="btnSubmit"/>
	 <input type="button" value="クリア" onclick="window.location.href='http://localhost:8080/MySSH/index2.jsp'"/>

	</div>
	</form>
</body>
</html>

