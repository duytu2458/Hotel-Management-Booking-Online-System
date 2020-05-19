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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/css/jquery-ui.css">
	<link rel="stylesheet" href="resources/css/dataTables.jqueryui.min.css">
	<link rel="stylesheet" href="resources/cssScreen/screenSearchList.css">	
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<style type="text/css">
	</style>
</head>
<body style="zoom : 125%">
<div class="container-fluid">
	<div class="container" style="border: 1px solid #509CF5; height: 40px; background: #CDE2F5; margin-top: 10px;">
			<div style="padding: 10px;float: left; display: inline-block; color: #1672C5">AUTB031</div>
			<div style="padding: 10px;margin: 0px 0px 0px 39.5%; display: inline-block; color: #1672C5;"><strong>参加者の更新 </strong></div>
			<div style="padding: 10px;float: right; display: inline-block; margin: 0px 0px 0px 0px; color: #1672C5">YYYY年MM月DD日
			</div>
	</div> <br>
	<div class="container" style="border: 1px solid #509CF5; height: 25px; margin-top: 10px;  background: #FFFFFF">   
		<label style="padding: 2px 0px 0px 8px; color: red; background: #FFFFFF;"><<< エラーメッセージ >>> </label>
	</div> <br>
	
	<form:form id = "myForm" action="getSearchData" method="POST" modelAttribute="search" >
		<div class="container" style="border: 1px solid #509CF5; height: 140px; margin-top: 10px; background: #F8FCFF">
			<div class="container-search" style="width: 42%; float: left; margin-left: 10px;">
				<div style="height: 40px; width: 100%;">
					<div>
						<label style="width: 22%; height: 20px;" for="フルネーム">フルネーム</label>
						<form:input path = "fullName"  id="fullName" name="" tabindex="1" 
							type="text" style="width: 60%; height: 20px; display: inline-block;" />
					</div>
					<div>
						<label style="width: 22%; height: 20px;">学校</label>
						<form:select path="schoolCode" id="schoolCode " tabindex="2" 
							style="width: 60%; height: 20px;vertical-align: middle; display: inline-block;background : white;">
   							<form:option value="" title="Tooltip" label="- 教育のレベルを選択します -"/>
   							<form:options title="Tooltip" items="${listCodeSchool}" />
						</form:select>
					</div>
					<div>
						<label style="width: 22%; height: 20px;">クラス</label>
						<form:select path="className" id="className" tabindex="3" 
							style="width: 60%; height: 20px;vertical-align: middle; display: inline-block;background : white;" >
							
   							<form:option value="" title="Tooltip" label="- 件名を選択してください -"/>
   							
   							<c:forEach var="list" items="${listClasses}">
   								<option title="Tooltip" value="${list.classCode}" label="${list.className}"></option>
   							</c:forEach>
   							
						</form:select>
					</div>
					<div>
						<label for="学年 " style="width: 22%; height: 20px;margin-top: 2px">学年</label>						
						<form:select path="fromYear" id="fromYear" class = "year" tabindex="4" 
							style="width: 29.7%; height: 20px; vertical-align: middle; display: inline-block;background : white;margin-bottom: 0px;"  >
   							<form:option value="" title="Tooltip" label="からYYYY"/>
						</form:select>
						<form:select path="toYear" id="toYear" class = "year" tabindex="5"
							 style="width: 29.7%; height: 20px;vertical-align: middle; display: inline-block;background : white; margin-top: 0px;" >
   							<form:option value="" title="Tooltip" label="にYYYY"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		
		<div class="container" style="height: 28px; margin-top: 10px; background: #CDE2F5; padding-right: 0px;">
			<form:button class="button-business" type="submit" tabindex="8" id = "getAdd">新規登録(N)</form:button>
			<form:button class="button-business" tabindex="7">キャンセル( C )</form:button>
			<form:button class="button-business" tabindex="6">検索(S)</form:button>
		</div>
	
	<div id = "showTable" style = "display : none;">
		
		<div class="container" style="margin-top: 70px; border: 1px solid #4D94C8; height: 30px; margin-top: 2px; background: #48A5D0" >
			<label style="background: #48A5D0;word-spacing: 4px">1/4 ペ ー ジ </label>
				<form:button class="fa fa-arrow-left" style="width: 2%;height: 75%"></form:button>
				<form:button class="fa fa-arrow-right" style="width: 2%;height: 75%"> </form:button> 
			<label style="background: #48A5D0;word-spacing: 4px">ペ ー ジ</label>
				<form:input path = "" type="text" name="" value="1" style="width: 40px; text-align: left"/>
				<form:button style="width: 50px; height: 25px; background: #BAD3ED; margin: 2px 0px 0px 0px;"> 表示 </form:button>
			<label style="background: #48A5D0"> 検 索 件 数 </label>
				<form:select path = "" class="form-inline" style="width: 50px; height: 25px; margin: 2px 0px 0px 0px; background: white">
   					<form:option value="10" title="Tooltip" label="10"/>
				</form:select>	
				<form:button style="width: 50px; height: 25px; background: #BAD3ED; margin: 2px 0px 0px 0px;"> 表示 </form:button>
		</div>
		
		<div class="container" style="padding-left: 0px; padding-right: 0px;">
			<table class="table" style="width: 100%; border: 1px solid #4D94C8;">
				<thead>
					<tr>
						<th class="column-color">区</th>
						<th class="column-color">フルネーム <span style=" color: red;">(*)</span></th>
						<th class="column-color">学校 <span style=" color: red;">(*)</span></th>
						<th class="column-color">コンテンツ</th>
						<th class="column-color">学んだ</th>
						<th class="column-color">オブジェクト</th>
						<th class="column-color">クラス</th>
						<th class="column-color">学年</th>
						<th class="column-color" style=" width: 100% border: 0px">要点</th>
					</tr>
				</thead>
				
				<tbody style="border: 1px solid #4D94C8">
					<c:forEach var="list" items="${listDataTop10}">
						<tr>
							<td width="5.172%"><input id="OP" class="input-table OP" type="text" name="" style="width: 55%" tabindex="9" ></td>
							<td width="15.516%">
								<form:input path="" id="" class="input-table fullName" type="text" name="" tabindex="8" 
									value = "${list.fullName}"/>
							</td>
							<td width="17.24%">
								<form:input path = "" id="" class="input-table schoolCode" name="" tabindex="9"
									value = "${list.schools.schoolCode}" type="text" style="width: 30%;margin-left: 5px;"/>
								<form:input path = "" id="" class="input-table schools" name="" tabindex="10" value="参照" 
									type="button" style="width: 20%;margin-left: 1px;text-align: center;background-color: #1A75C6"/>
								<form:input path = "" id="" class="input-table schoolName" name=""  tabindex="11" 
									value = "${list.schools.schoolName}" 
									type="text" style="width: 46%; margin-left: 1px;"/>
							</td>
							<td width="12.068%">
								<form:input path = "" id="" class="input-table content" type="text" name="" tabindex="12" 
									value = "${list.content}"/>
							</td>
							<td width="12.068%">
								<form:input path = "" id="" class="input-table haveLeared" type="text" name="" tabindex="13" 
									value = "${list.haveLearned}"/>
							</td>
							<td width="12.068%">
								<form:input path = "" id="" class="input-table object" type="text" name="" tabindex="14" 
									value = "${list.object}"/>
							</td>
							<td width="6.896%">
								<form:select path="" class="input-table className" tabindex="15" 
										style="width: 80%;height: 21px; background: white">
   									<form:option value="${list.classes.className}" title="Tooltip" label="${list.classes.className}"/>
								</form:select>
							</td>
							<td width="10.334%">
								<form:select path="" class="input-table year" tabindex="16" 
										style="width: 85%;height: 21px;background: white">
   									<form:option value="${list.year}" title="Tooltip" label="${list.year}"/>
								</form:select>
							</td>
							<td width="8.62%">
								<form:input path = "" id="mark" class="input-table mark" tabindex="17" 
									value = "${list.mark}" type="text" name="" style="text-align: right;float: right;background: white"/>
							</td>
						</tr>
     				</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div class="container" style="height: 28px; margin-top: 20px; padding-right: 0px;">
			<span style="padding-left: 0px;">区：(C.変更　D.削除)</span>
			<form:button class="button-business" tabindex="21">エクスポート(E)</form:button>
			<form:button class="button-business" tabindex="20" onclick="Reset()">クリアー(R)</form:button>
			<form:button class="button-business" tabindex="19">更新(U)</form:button>
		</div> 
	</div>
		</form:form>
</div>


<c:if test="${listDataTop10.size() != 0 && listDataTop10 != null}">
		<script type="text/javascript">
		$(document).ready(function () {
			$("#showTable").show();
			$("#showTable").css("display", "");
		});
	</script>
</c:if>

<script src="resources/js/jquery-3.3.1.js"></script>
<script>
	function Reset(){
		document.getElementById("myForm").noValidate = "true";
	}
	$(document).ready(function () {

		$(".year").focus(function(){
			var str = '<option title="Tooltip" value="" label=""></option>'
			for (var i = 1950; i <= new Date().getFullYear(); i++ ){
				str += '<option title="Tooltip" value="'+i+'" label="'+i+'"></option>'
			}
			$(this).html(str);
		});

		$("#getAdd").click(function(){
			$("#myForm").attr('novalidate', 'novalidate');
			$("#myForm").attr("action", "ManHinhAdd");
		});
		$("#getResetSearch").click(function(){
			$("#myForm").attr('novalidate', 'novalidate');
			$("#myForm").attr("action", "ManHinhSearchList");
		});

		$("#fromYear").focus(function(){
			var str = '<option title="Tooltip" value="" label=""></option>'
			for (var i = 1950; i <= new Date().getFullYear(); i++ ){
				str += '<option title="Tooltip" value="'+i+'" label="'+i+'"></option>'
			}
			$(this).html(str);
		});
		$("#toYear").focus(function(){
			var str = '<option title="Tooltip" value="" label=""></option>'
			for (var i = 1950; i <= new Date().getFullYear(); i++ ){
				str += '<option title="Tooltip" value="'+i+'" label="'+i+'"></option>'
			}
			$(this).html(str);
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