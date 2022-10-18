<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
    
 <%
 
 //넘어온 데이터 
 
 
  
 //
  request.setCharacterEncoding("UTF-8");
  String s_id  =request.getParameter("s_id");
  String s_name  =request.getParameter("s_name");
  String s_grade  =request.getParameter("s_grade");
  String teacher_id  =request.getParameter("teacher_id"); 
  String weekday  =request.getParameter("weekday");
  String start_h  =request.getParameter("start_h");
  String end_h  =request.getParameter("end_h");  
  
  out.println( s_id);
  out.println( s_name);
  out.println( teacher_id);
  out.println( weekday);
  out.println( start_h);
  out.println( end_h);
 
 // 데이타베이스에 등록 
	String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String password="1234";

	//1.드라이브로딩
 	Class.forName(driver);
	//2.연결
 	Connection   con =DriverManager.getConnection(url, user, password);
	//3. sql작성, 실행	
	//String sql ="insert into tbl_course_300 values('1011',  '한식만들기' , 2, 1, 'M' , 0900, 1100 )";
    String sql ="insert into tbl_course_300 values(?,?,?,?,?,?,?)";
    PreparedStatement pst =con.prepareStatement(sql);
    pst.setString(1,s_id );
    pst.setString(2,s_name );
    pst.setString(3,s_grade );
    pst.setString(4,teacher_id );
    pst.setString(5,weekday );
    pst.setString(6,start_h );
    pst.setString(7,end_h );     
 	pst.executeUpdate(); //executeUpdate 수행결과로 Int타입을 반환하여 DB에 전달
 	
 	pst.close();
 	con.close();
 	
 // 페이지이동  
 //   
 	response.sendRedirect("index.html"); 
 %>