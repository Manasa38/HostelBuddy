<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.io.*,java.util.*,utill.DBconnection" %> 
<%
  int id =  Integer.parseInt(request.getParameter("picid"));
//int id =1;
  try{      
  //  Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con= DBconnection.createConnection();       
    Statement st=con.createStatement();
    String strQuery = "select * from images where picid="+id;
    ResultSet rs = st.executeQuery(strQuery);

    String imgLen="";
    if(rs.next()){
      imgLen = rs.getString(1);
       }  
    rs = st.executeQuery(strQuery);
    if(rs.next()){
      int len = imgLen.length();
      byte [] rb = new byte[len];
      InputStream readImg = rs.getBinaryStream(1);
      int index=readImg.read(rb, 0, len);  
      st.close();
      response.reset();
      response.getOutputStream().write(rb,0,len); 
      response.getOutputStream().flush();        
    }
  }
  catch (Exception e){
    e.printStackTrace();
  }
%>