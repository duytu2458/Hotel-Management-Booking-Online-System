<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SearchList</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/jquery-ui.css">
<link rel="stylesheet" href="resources/css/dataTables.jqueryui.min.css">
<link rel="stylesheet" href="resources/cssScreen/screenSearchList.css">
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<style type="text/css">
</style>
</head>
<body style="zoom: 125%">
	<div class="container-fluid">
		<div class="container"
			style="border: 1px solid #509CF5; height: 40px; background: #CDE2F5; margin-top: 10px;">
			<div
				style="padding: 10px; float: left; display: inline-block; color: #1672C5">AUTB031</div>
			<div
				style="padding: 10px; margin: 0px 0px 0px 39.5%; display: inline-block; color: #1672C5;">
				<strong>参加者の更新 </strong>
			</div>
			<div
				style="padding: 10px; float: right; display: inline-block; margin: 0px 0px 0px 0px; color: #1672C5">YYYY年MM月DD日
			</div>
		</div>
		<br>
		<div class="container"
			style="border: 1px solid #509CF5; height: 25px; margin-top: 10px; background: #FFFFFF">
			<label
				style="padding: 2px 0px 0px 8px; color: red; background: #FFFFFF;"><<<
				エラーメッセージ >>> </label>
		</div>
		<br>
		<form id="myFrom">
			<div class="container"
				style="border: 1px solid #509CF5; height: 140px; margin-top: 10px; background: #F8FCFF"> <br>
				<div class="container-search"
					style="width: 42%; float: left; margin-left: 10px;">
					<div style="height: 40px; width: 100%;">
						<div>
							<label style="width: 22%; height: 20px;">フルネーム</label>
							<input id="fullNameSearch" tabindex="1" 
								type="text" name="" style="width: 60%; height: 20px; display: inline-block;">
						</div>
						<div>
							<label style="width: 22%; height: 20px;">学校</label> 
							<select id="schoolCodeSearch" tabindex="2"
								style="width: 60%; height: 20px; vertical-align: middle; display: inline-block; background: white;">
								<option value="">- 教育のレベルを選択します -</option>
							</select>
						</div>
						<div>
							<label style="width: 22%; height: 20px;">クラス</label>
							<select id="classNameSearch" tabindex="3"
								style="width: 60%; height: 20px; vertical-align: middle; display: inline-block; background: white;">
								<option value="">- 件名を選択してください -</option>
							</select>
						</div>
						<div>
							<label style="width: 22%; height: 20px; margin-top: 2px">学年</label>
							<select id="fromYear" tabindex="4"
								style="width: 29.7%; height: 20px; vertical-align: middle; display: inline-block; background: white; margin-bottom: 0px;">
								<option value="" label="からYYYY"></option>
							</select> <select id="toYear" tabindex="5"
								style="width: 29.7%; height: 20px; vertical-align: middle; display: inline-block; background: white; margin-top: 0px;">
								<option value="" label="にYYYY"></option>
							</select>
						</div>
					</div>
				</div>
			</div>

			<div class="container"
				style="height: 28px; margin-top: 10px; background: #CDE2F5; padding-right: 0px;">
				<button id="clickAdd" class="button-business" tabindex="8">新規登録(N)</button>
				<button id="clickReset" class="button-business" tabindex="7">キャンセル( C )</button>
				<button id="clickSearch" class="button-business" tabindex="6">検索(S)</button>
			</div>
			
		</form>

			<div class="container"
				style="margin-top: 70px; border: 1px solid #4D94C8; height: 30px; margin-top: 2px; background: #48A5D0">
				<label style="background: #48A5D0; word-spacing: 4px">1/4 ペー ジ </label>
					<button class="fa fa-arrow-left" style="width: 2%; height: 75%"></button>
					<button class="fa fa-arrow-right" style="width: 2%; height: 75%"></button>
					
				<label style="background: #48A5D0; word-spacing: 4px">ペ ー ジ</label>
				<input type="text" name="" value="1"
					style="width: 40px; text-align: left;">
					<button style="width: 50px; height: 25px; background: #BAD3ED; margin: 2px 0px 0px 0px;"> 表示</button>

				<label style="background: #48A5D0"> 検 索 件 数 </label> 
				<select class="form-inline"
					style="width: 50px; height: 25px; margin: 2px 0px 0px 0px; background: white">
					<option value="">10</option>
				</select>
				<button style="width: 50px; height: 25px; background: #BAD3ED; margin: 2px 0px 0px 0px;"> 表示</button>
			</div>

			<div class="container" style="padding-left: 0px; padding-right: 0px;">
				<table class="table" style="width: 100%; border: 1px solid #4D94C8;">
					<thead>
						<tr>
							<th class="column-color">区</th>
							<th class="column-color">フルネーム <span style="color: red;">(*)</span></th>
							<th class="column-color">学校 <span style="color: red;">(*)</span></th>

							<th class="column-color">コンテンツ</th>
							<th class="column-color">学んだ</th>
							<th class="column-color">オブジェクト</th>

							<th class="column-color">クラス</th>
							<th class="column-color">学年</th>
							<th class="column-color" style="width: 100% border: 0px">要点</th>
						</tr>
					</thead>
					<tbody style="border: 1px solid #4D94C8">
						<c:forEach var="i" begin="1" end="2">
							<tr id="row${i}}">
								<td width="5.172%">
									<input id="OP" class="input-table"
										type="text" name="" style="width: 55%"></td>
								<td width="15.516%">
									<input id="fullName${i}" class="input-table fullName" name=""  required="required"
									type="text" style="width: 91%;"></td>
								<td width="17.24%">
									<input id="schoolCode${i}" class="input-table schoolCode"  tabindex="9" required="required" 
										type="text" name="" style="width: 30%; margin-left: 5px;">
									<input id="clickPopup" class="input-table clickPopup" name="" tabindex="10" value="参照" 
										type="button" style="width: 20%; margin-left: 1px; text-align: center; background-color: #1A75C6"> 
									<input id="schoolName${i}" class="input-table schoolName" name=""  tabindex="11" required="required"
										type="text" style="width: 46%; margin-left: 1px;"> </td>
								<td width="12.068%">
									<input id="content${i}" class="input-table content" 
										type="text" name="" tabindex="12" style="width: 90%;"></td>
								<td width="12.068%">
									<input id="haveLearned${i}" class="input-table haveLearned" name="" tabindex="13" 
										type="text" style="width: 90%;"></td>
								<td width="12.068%">
									<input id="object${i}" class="input-table object"  name="" tabindex="14" 
										type="text" style="width: 90%;"></td>
								<td width="9.896%">
									<select id="colClass${i}" class="input-table classes" tabindex="15"
										style="width: 86%; height: 21px; background: white">
										<option value=""></option>
									</select></td>
								<td width="8.334%">
									<select id="numberYear${i}" class="input-table numberYear" tabindex="16" 
										style="width: 85%; height: 21px; background: white">
										<option value=""></option>
									</select></td>
								<td width="7.62%">
									<input id="mark${i}" class="input-table mark" name="" tabindex="17"
										type="text" style="text-align: right; width: 84%; background: white" ></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="container"
				style="height: 28px; margin-top: 20px; padding-right: 0px;">
				<span style="padding-left: 0px;">区：(C.変更 D.削除)</span>
				<button class="button-business" tabindex="21">エクスポート(E)</button>
				<button class="button-business" tabindex="20" onclick="Reset()">クリアー(R)</button>
				<button class="button-business" tabindex="19">更新(U)</button>
			</div>
		
	</div>


	<script src="resources/js/jquery-3.3.1.js"></script>
	<script>
		function Reset() {
			document.getElementById("myForm").noValidate = "true";
		}
		$(document).ready(function() {
			$("#clickSearch").click(function (){
				$("#myForm").attr('novalidate', 'novalidate');
				var fullName2 = $("#fullNameSearch").val();
				$("#myForm").attr("action","");
				$.post("getSearch",
						{fullName : fullName2,},
						function (data,status){
							alert(data);
							alert("<<<<<<<<<");
						}
				);
				
			});


			$("#clickReset").click(function (){
				alert(">>>>>>>");
				alert(${listParticipants.size()});
			});

			$(".fullName").eq(0).focus();
			$(".fullName").prop('maxLength', 15);
			$(".schoolCode").prop('maxLength', 3);
			$(".schoolName").prop('maxLength', 20);
			$(".content").prop('maxLength', 10);
			$(".haveLearned").prop('maxLength', 10);
			$(".object").prop('maxLength', 10);
			$(".className").prop('maxLength', 10);
			$(".year").prop('maxLength', 4);
			$(".mark").prop('maxLength', 5);
			$(".numberYear").prop('maxLength', 4)
		});
	</script>

</body>
</html>






<!--  background: white;background: url('resources/img/a.png') no-repeat scroll 0px 0px;
  								padding-right:0px; -->