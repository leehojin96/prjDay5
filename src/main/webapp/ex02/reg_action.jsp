<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
    <%
	request.setCharacterEncoding("UTF-8");
	String s_id = request.getParameter("s_id") ;
	String s_name = request.getParameter("s_name") ;
	String teacher_id = request.getParameter("teacher_id") ;
	String s_grade = request.getParameter("s_grade") ;
	String weekday = request.getParameter("weekday") ;
	String start_h = request.getParameter("start_h") ;
	String end_h = request.getParameter("end_h") ;
	
	out.println(s_id);
	out.println(s_name);
	out.println(teacher_id);
	out.println(s_grade);
	out.println(weekday);
	out.println(start_h);
	out.println(end_h);
	
	//db정보
	String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String password="1234";
	
	//1.드라이버 로딩
	Class.forName(driver);
	
	//2.데이터베이스 커넥션 생성
	Connection con = DriverManager.getConnection(url, user, password);
	
	//3.Statement 생성 / PreparedStatement 생성
	String sql = "insert into tbl_course_300 values(?,?,?,?,?,?,?)";
	PreparedStatement pst = con.prepareStatement(sql);
	
	//4. 쿼리 생성
	pst.setString(1, s_id);
	pst.setString(2, s_name);
	pst.setString(3, teacher_id);
	pst.setString(4, s_grade);
	pst.setString(5, weekday);
	pst.setString(6, start_h);
	pst.setString(7, end_h);
	
	//5. 쿼리 실행
	pst.executeUpdate();
	
	//7.자원 반납
	
	pst.close();
	con.close();
	
	response.sendRedirect("index.html");
	
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