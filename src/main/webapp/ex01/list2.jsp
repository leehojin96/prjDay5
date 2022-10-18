<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
    <%
    String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String password="1234";
	
	
	//드라이브로드
	Class.forName(driver);
	
	//db연결
	Connection con = DriverManager.getConnection(url, user, password);
	
	if(con != null){
		out.print("db ok");
	}else{
		out.print("db fail");
	}
	
	//Statement 생성
	Statement st = con.createStatement();
	
	//ResultSet객체로 DB에서 결과값 받아오기
	ResultSet rs = st.executeQuery("select * from tbl_course_300");
	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>