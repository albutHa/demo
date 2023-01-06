<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<div id="div">hi</div>
<div id="div1"></div>
<script>
    var name=["회원이름","비밀번호","페스워드를 입력해주세요"];
    var userList=[

        {username:"홍길동",age:"12"}

    ]
    var mapdata=[
        {userNum:"1",name:"홍길동",age:"122"},
        {userNum: "2",name: "홍길동2",age:"123"},
    ]

    var mapdataResult=mapdata.map(function (finish) {
        return {test:mapdata.userNum}
    })

    console.log(mapdataResult);

    var result=userList.map(function (fulldata) {
        return {view:fulldata.age}
    });

    console.log(result)


    document.getElementById("div").innerHTML=name

    var practice =[
        {a:"1",b:"2"},
        {c:"3",d:"4"}
    ]

    var practiceresult=practice.map(function (value) {
        return{show:value.a};

    })
    console.log(practiceresult)
    console.table(practiceresult)
    function text(){

        var txt=document.getElementById("name").value;
        document.getElementById("div1").innerHTML=txt
    }
</script>
<form action="/">
    <input type="text" name="name" id="name" onclick="text()">
    <input type="submit" value="확인">
</form>
</body>
</html>