<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String driver = "oracle.jdbc.driver.OracleDriver" ;
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="1234";

//1.드라이버 로딩
	Class.forName(driver);
//2.커넥션 생성
	Connection con = DriverManager.getConnection(url, user, password);
//3.Statement / 생성
	Statement st = con.createStatement();
//4.쿼리 입력
	String sql = "select * from tbl_course_300";
//5.쿼리 실행
	ResultSet rs = st.executeQuery(sql);


%>
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

<%//6.쿼리 출력
while(rs.next()){ %>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
</tr>
<%} 

//7.자원 반납
rs.close();
st.close();
con.close();
%>
</table>
</body>
</html>