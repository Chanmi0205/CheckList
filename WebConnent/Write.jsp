<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CheckList make</title>

    <link rel="stylesheet" href="Write.css">
</head> 
<body> 
	<form action="WriteProcess.jsp" method="post">
	    <h2 class="title">CheckList</h2>
	
	    <hr class="width1">
	
	    <!-- 체크박스 여부 -->
	    <input type="checkbox" name="chec" value="check" class="check"> <label for="state" class="textCheck">check</label> 
	    <p class="checkP">checkList make</p>
	    
	        <p class="key">키워드</p> 
	        <button class="keyEdit">키워드 생성 및 편집</button>
	        <button class="keyEditCheck">V</button>
	         
	        <!-- 키워드 화면 -->
	        <div class="keyword">        
	        </div>
	
	
	        <p class="textDate">해당 날짜</p>
	         
	        <!-- 해당 날짜 선택 -->
	        <input type='number' name="DTY" class="DTY"> <p class="DTYT">년</p>
	        <input type='number' name="DTM" class="DTM"> <p class="DTMT">월</p>
	        <input type='number' name="DTD" class="DTD"> <p class="DTDT">일</p>
	
	        <p class="PT1">설명1설명1설명1설명1설명1설명1설명1설명1설명1설명1설명1설명1설명1설명1설명1설명1설명1설명1설명1설명1</p>
	
	        <p class="start">시작 시간</p>
	        <input type="number" name="SH" class="SH"> <p class="SHT">시</p>
	        <input type="number" name="SM" class="SM"> <p class="SMT">분</p>
	
	        <p class="End">끝나는 시간</p>
	        <input type="number" name="EH" class="EH"> <p class="EHT">시</p>
	        <input type="number" name="EM" class="EM"> <p class="EMT">분</p>
	        
	        <p class="PT2">설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2</p>
	
	        <p class="t1">할일작성</p>
	        <input type="text" placeholder="할 일을 작성하세요." class="text" name="text">
	
	        
	        <p class="t2">memo</p>
	        <input type="text" placeholder="memo" class="memo" name="memo">
	
	
	    <hr class="width2">
	    <input type="submit" value="create" class="create">
	</form>
    
</body>
</html>