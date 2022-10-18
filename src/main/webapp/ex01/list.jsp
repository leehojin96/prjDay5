<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
<%@ page import="java.sql.*" %>


<%
	

   //연결정보
   // 데이타베이스에 등록 
	String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String password="1234";
   
   //드라이브로드
   
    Class.forName(driver);
    //디비연결
    Connection con  =DriverManager.getConnection(url, user, password);
    
    if( con != null){
    	out.println("db ok");
    }else{
    	out.println("db fail");
    }
    
 
   
   // sql 작성및 실행
   String sql ="select * from tbl_course_300";
   Statement st= con.createStatement();
   ResultSet rs  =st.executeQuery(sql); 
// Statement란 실제 데이터베이스에 SQL문을 보내기 위해 필요한 객체로 데이터의
// 삽입, 수정, 삭제, 검색을 처리하는 DML문을 사용할 때는 이 인터페이스를 사용한다. 
// Statement는 Connection 객체의 연결 정보를 가져와서 DB에 접근하므로
// 이 인터페이스를 사용하기 위해서는 접속 상태인 Connection 객체가 먼저 존재하게 된다.


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="list.css"  rel="stylesheet">
</head>
<body>

<table>
<!-- 제목줄 -->
<tr>
<td>과목코드</td>
<td>과목명</td>
<td>학점</td>
<td>강사코드</td>
<td>요일</td>
<td>시작시간</td>
<td>종료시간</td>
</tr>
<% while( rs.next()){ %>
<tr>
<td> <%= rs.getString(1) %></td>
<td> <%= rs.getString(2) %></td>
<td> <%= rs.getString(3) %></td>
<td> <%= rs.getString(4) %></td>
<td> <%= rs.getString(5) %></td>
<td> <%= rs.getString(6) %></td>
<td> <%= rs.getString(7) %></td>
</tr>
<% } %>

</table>

</body>
</html>