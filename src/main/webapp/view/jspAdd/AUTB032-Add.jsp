<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/jquery-ui.css">
<link rel="stylesheet" href="resources/css/dataTables.jqueryui.min.css">
<link rel="stylesheet" href="resources/cssScreen/screenAdd.css">
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<style type="text/css">
.modal {
	display: none; position: fixed; z-index: 1;
	padding-top: 100px; left: 0; top: 0;
	width: 100%; height: 100%; overflow: auto; 
	background-color: rgb(0, 0, 0); background-color: rgba(0, 0, 0, .4);
}
.modal-content {
	background-color: #CDE2F5; margin: auto;
	padding: 20px; border: 1px solid #509CF5; width: 25%;
}
.close {
	color: #aaaaaa; float: right;
	font-size: 28px; font-weight: bold;
}
.close:hover, .close:focus {
	color: #000; text-decoration: none;
	cursor: pointer;
}
.divpopup {
	width: 20%; display: inline-block;
}
</style>
</head>
<body style="zoom: 135%">
	<div class="container-fluid">
		<div class="container"
			style="border: 1px solid #509CF5; height: 40px; background: #CDE2F5; margin-top: 10px;">
			<div
				style="padding: 10px; float: left; display: inline-block; color: #1672C5">AUTB032</div>
			<div
				style="padding: 10px; margin: 0px 0px 0px 39.5%; display: inline-block; color: #1672C5;">
				<strong> 参加者の登録 </strong>
			</div>
			<div
				style="padding: 10px; float: right; display: inline-block; margin: 0px 0px 0px 0px; color: #1672C5">
				YYYY年MM月DD日</div>
		</div>
		<br>
		<div class="container"
			style="border: 1px solid #509CF5; height: 25px; margin-top: 10px; background: #FFFFFF">
			<label
				style="padding: 2px 0px 0px 8px; color: red; background: #FFFFFF;"
				id="MessageStatus"> <<< エラーメッセージ >>> </label>
		</div>
		<br> <br>

		<%-- <form id="myForm" action = ""> --%>
		<form:form id="myForm" action="" method="POST"> 
			<div class="container" style="padding-left: 0px; padding-right: 0px;">
				<table class="table" style="width: 100%; border: 1px solid #4D94C8;">
					<thead>
						<tr>
							<th class="column-color"></th>

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
							<tr id = "row${i}}">
								<td class="row-color" width="1%">${i}</td>
								<td width="15.516%">
									<input id="fullName${i}" class="input-table fullName" name="" type="text" required="required" style="width: 91%;"></td>
								<td width="17.24%">
									<div id="">
										<input id="schoolCode${i}" class="input-table schoolCode"
											type="text" name="" style="width: 30%; margin-left: 5px;" tabindex="9" required="required">
										<input id="clickPopup" class="input-table clickPopup" type="button" name=""
											style="width: 20%; margin-left: 1px; text-align: center; background-color: #1A75C6" tabindex="10" value="参照">
										<input id="schoolName${i}" class="input-table schoolName" type="text" name=""
											style="width: 46%; margin-left: 1px;" tabindex="11" required="required">
									</div>
								</td>
								<td width="12.068%">
									<input id="content${i}" class="input-table content" type="text" name="" tabindex="12" style="width: 90%;"></td>
								<td width="12.068%">
									<input id="haveLearned${i}" class="input-table haveLearned" 
										type="text" name="" tabindex="13" style="width: 90%;"></td>
								<td width="12.068%">
									<input id="object${i}" class="input-table object" type="text" name="" tabindex="14" style="width: 90%;"></td>
								<td width="9.896%">
									<select id="colClass${i}" class="input-table classes" style="width: 86%; height: 21px; background: white" tabindex="15">
										<option value=""></option>
								</select></td>
								<td width="8.334%">
									<select id="numberYear${i}" class="input-table numberYear" style="width: 85%; height: 21px; background: white" tabindex="16">
										<option value=""></option>
									</select></td>
								<td width="7.62%">
									<input id="mark${i}" class="input-table mark" type="text" name=""
										style="text-align: right; width: 84%; background: white" tabindex="17"></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="container"
				style="height: 28px; margin-top: 20px; padding-right: 0px;">
				<button id="clickSearch" class="button-business" tabindex="20">キャンセル(K)</button>
				<button id="clickReset" class="button-business" tabindex="19" >'クリアー(C)</button>
				<button id="clickAdd" class="button-business" tabindex="18">登録(N)</button>
			</div>
		</form:form>
		<%-- </form> --%>
	</div>

	<div class="modal">
		<div class="modal-content">
			<span class="close">&times;</span>
			<p data-role="list-divider" style="margin-left: 27%">学校を選択してください！</p>
			<div style="margin-left: 20%">
				<a href="#" class="popup" id="indexPopup0">
					<span style="width: 20%; display: inline-block;">
						===== </span> Not Select =====
				</a> <br>		
				<c:forEach var="i" begin="0" end="${listSchools.size()}">
					<a href="#" class="popup" id="indexPopup${i+1}" onclick="selectPopup(${listSchools[i].schoolCode},${listSchools[i].schoolName.trim()})">
						<span style="width: 20%; display: inline-block;">
							${listSchools[i].schoolCode} </span>${listSchools[i].schoolName}
					</a><br>
				</c:forEach>
			</div>
		</div>
	</div>
	
	
	<script src="resources/js/jquery-3.3.1.js"></script>

	<script>
	$(document).ready(function () {

		var A = null;
		$(".clickPopup").click(function(event){
			$(".modal").show();
			var i = $(this).index('.clickPopup');
			A = i+1;
		});
		
		var modal = $('.modal');
		var span = $('.close');
		span.click(function () {
			modal.hide();
		});
		$(window).on('click', function (e) {
			if ($(e.target).is('.modal')) {
				modal.hide();
			}
		});
		
		$(".popup").click(function selectPopup(a,b){
			var col = "#colSchool" + A; var code = "#schoolCode" + A;
			var name = "#schoolName" + A; var colClass = "#colClass" + A;
			//$(".colSchool").index(i).children(".schoolCode").val(333);
			var indexPopup = $(this).index('.popup');
 			var b = "#indexPopup" + indexPopup;
 			var strPopup = $(b).html();
			strPopup = strPopup.substr(64).split("</span>");
			if(strPopup[1].indexOf("Not Select") > 0){
				strPopup = ["",""];
			}
			
			$(code).val(strPopup[0].trim());
			$(name).val(strPopup[1].trim());
			$('.modal').hide();
			$.post("getClassNameFormPopup",
				{id: strPopup[0],},
				function(data, status){
					var obj = JSON.parse(data);
					var str = "";
					for (var i = 0; i < obj.length; i++){
						str += '<option title="Tooltip" value="'+obj[i].classCode+'" label="'+obj[i].className+'"></option>'
					} 
					$(colClass).html(str);
 				}
			);
		});

		$("#clickAdd").click(function(event){

			$("#myForm").attr("action","");
			
			var fullNameClass = $(".fullName"); var schoolCodeClass = $(".schoolCode"); var contentClass = $(".content");
			var haveLearnedClass = $(".haveLearned"); var objectClass = $(".object"); var classesClass = $(".classes");
			var yearClass = $(".numberYear"); var markClass = $(".mark");

			var matrix = "";
			for (var i = 0; i < fullNameClass.length; i++){
				//var aka = '{"schoolCode" :' + schoolCodeClass.eq(i).val().trim() + "}";
				//var aka2 = '{"classCode" :' + classesClass.eq(i).val().trim() + "}";
				if (fullNameClass.eq(i).val() != "") {
					if (markClass.eq(i).val() == "") {
						markClass.eq(i).val(0);
					}
					var objJSON = {"fullName": fullNameClass.eq(i).val() , "schools":{"schoolCode" : schoolCodeClass.eq(i).val()} , 
							"content" : contentClass.eq(i).val() , "haveLearned" : haveLearnedClass.eq(i).val() , 
							"object" : objectClass.eq(i).val() , "classes" : {"classCode" : classesClass.eq(i).val()} , 
							"year" : yearClass.eq(i).val() , "mark" : markClass.eq(i).val() };
					matrix += JSON.stringify(objJSON) + ";";
				}		
			}
			matrix = matrix.substring(0,matrix.length-1);
			$.post("getAdd",
					{objJSON : matrix},
					function(data, status){
						$("#MessageStatus").html(data);
	 				}
			);
		});

		$(".mark").focus(function (){
			var markRegex1 = /^\d{1,2}$/g;
			var markRegex2 = /^\d{2}\.\d{2}$/g;
			$(this).change(function (){
				var mark = $(this).val();
				if (!markRegex1.test(mark) && !markRegex2.test(mark)){
					alert("<<<<<<<<<");
				}
			});
		});

		$(".numberYear").focus(function (){
			var dataYear = "";
			var date = new Date();
			for(var i = 2010; i <= date.getFullYear(); i++){
				dataYear += '<option value="'+ i +'">'+ i +'</option>';
			}
			$(this).html(dataYear);
		});

		$("#clickReset").click(function (){
			$("#myForm").attr('novalidate', 'novalidate');
			$("#myForm").attr("action","ScreenAdd");
		});

		$("#clickSearch").click(function (){
			$("#myForm").attr('novalidate', 'novalidate');
			$("#myForm").attr("action","ScreenSearch");
		});
		
		
		$(".fullName").eq(0).focus();
        $(".fullName").prop('maxLength', 15);
        $(".schoolCode").prop('maxLength', 3);   
        $(".schoolName").prop('maxLength', 20);   
        $(".content").prop('maxLength', 10);   
        $(".haveLearned").prop('maxLength', 10);   
        $(".object").prop('maxLength', 10);   
        $(".className").prop('maxLength', 10);   
        $(".numberYear").prop('maxLength', 4)
        $(".mark").prop('maxLength', 5);
               
    });
</script>
</body>
</html>