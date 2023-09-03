
<%@page import="com.javatpoint.dao.UserDao" %>  
<jsp:useBean id="u" class="com.javapoint.bean.User" ></jsp:useBean> 

<jsp:setProperty property="*" name="u"/>  



 <%  int i=UserDao.save(u);  
if(i>0){  
	
	out.print("Successfully saved");
	
	RequestDispatcher rd=request.getRequestDispatcher("userform.html");
	rd.include(request, response);
}

else{  
	out.print("not saved");

} 

%>  