<%@tag import="com.pc.Student"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<!-- required属性可选。缺省值是false。若设为true  则JSP页面必须向Tag文件的attribute属性传递一个引用，否则出错。 -->
<%@ attribute name="length" required="false" %>
<%@ variable name-given="student" variable-class="com.pc.Student" scope="AT_END" %>
<body bgcolor=pink><P>
<% 
Student stu = new Student("周子翔",23);
stu.setAge(20);
jspContext.setAttribute("student",stu);
	int size=1;
       for(int i=1;i<=3;i++) {
    	  out.println("换行:");
          size=size+1;
%> <font size=<%=size%>>
<!-- jsp:doBody 仅在tag文件中使用，告诉容器计算JSP中本tag的body内容，并显示出来。可以加上var varReader属性和scope属性，将输入放入变量而不是显示出来 -->
         <jsp:doBody />
       </font>
<% }
%> </P></body>