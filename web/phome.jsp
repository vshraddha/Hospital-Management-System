    <%@page import="java.sql.*"%>
   <%
String uname = request.getParameter("name");
String passwd = request.getParameter("id");
try{
Class.forName("com.mysql.jdbc.Driver");
           Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/global","root","root");
 Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from patient where name='"+uname+"' and id='"+passwd+"'");

 int count=0;        
 while(rs.next())          
 {                   
 count++;         
  }                    
  if(count>0)         
   {            
   out.println("welcome "+uname);          
   session.setAttribute("pname",uname);
   session.setAttribute("pwd",passwd);
    response.sendRedirect("pahome.jsp");
   }         
    else          
    {                       
   response.sendRedirect("inval.jsp");                
    }
}catch(Exception e){
}
%>
