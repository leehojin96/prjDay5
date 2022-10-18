<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  page import="java.sql.*"%>
<%
    //데이터베이스 등록
    String driver="oracle.jdbc.driver.OracleDriver";
    String url="jdbc:oracle:thin@localhost:1521:xe";
    String user="system";
    String password="1234";
    
    //드라이브로드
    Class.forName(driver);
    
    //db 연결
    Connection con = DriverManager.getConnection(url, user, password);
    
    if(con != null){
    	out.print("db ok");
    }else{
    	out.print("db fial");
    }
    
    //sql 작성 및 실행
    String sql = "select * from tbl_course_300";
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery(sql);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<td>과목코드</td>
<td>과목명</td>
<td>학점</td>
<td>강사코드</td>
<td>요일</td>
<td>시작시간</td>
<td>종료시간</td>
</tr>
<% while(rs.next()){ %>
<tr>
<td> <%= rs.getString(1) %></td>
<td> <%= rs.getString(2) %></td>
<td> <%= rs.getString(3) %></td>
<td> <%= rs.getString(4) %></td>
<td> <%= rs.getString(5) %></td>
<td> <%= rs.getString(6) %></td>
<td> <%= rs.getString(7) %></td>
</tr>
<%} %>
</table>
</body>
</html>