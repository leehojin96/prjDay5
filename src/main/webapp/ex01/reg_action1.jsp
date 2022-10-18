<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
    <%
    request.setCharacterEncoding("UTF-8");
    String s_id = request.getParameter("s_id");
    String s_name = request.getParameter("s_name");
    String teacher_id = request.getParameter("teacher_id");
    String s_grade = request.getParameter("s_grade");
    String weekday = request.getParameter("weekday");
    String start_h = request.getParameter("start_h");
    String end_h = request.getParameter("end_h");
    
    out.println("s_id");
    out.println("s_name");
    out.println("teacher_id");
    out.println("s_grade");
    out.println("weekday");
    out.println("start_h");
    out.println("end_h");
    
    String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String password="1234";
	
	//드라이브 로딩
	Class.forName(driver);
	
	//연결
	Connection con = DriverManager.getConnection(url, user, password);
	
	//sql작성
	String sql ="insert into tbl_course_300 values(?,?,?,?,?,?,?)";
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, s_id);
	pst.setString(2, s_id);
	pst.setString(3, s_id);
	pst.setString(4, s_id);
	pst.setString(5, s_id);
	pst.setString(6, s_id);
	pst.setString(7, s_id);
	pst.executeUpdate();	
	
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