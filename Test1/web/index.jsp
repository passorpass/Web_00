<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2022/3/20
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    for(int i = 1 ; i <= 9 ; i++){
      out.println("<p>");
      for (int j = 1 ; j <= i ; j++){
        out.println(i+"*"+j+"="+(i*j));
      }
      out.println("</p>");
    }
  %>
<%--<%!--%>
<%--  public int count = 0;--%>
<%--%>--%>
<%--  <%--%>
<%--  count++;--%>
<%--  out.println(count);--%>
<%--  %>--%>
<%--  <%=--%>
<%--  count--%>
<%--  %>--%>
  <table width="800" cellpadding="0" border="1">
    <tr>
      <td>i</td>
      <td>i的平方</td>
    </tr>
    <%
      for(int i = 0 ; i <= 5 ;i++){
        out.println("<tr><td>"+i+"</td><td>"+i*i+"</td></tr>");

      }
    %>
  </table>
  <h2>Users list</h2>

  <c:forEach items="${model}" var="user">
  <div id="user" style="display: inline">
    <a href='showuser?id=${user.name}'>${user.name} - ${user.phone}</a>
    <a href="deluser?name=${user.name}"><input type="submit" value="delete"></a>
  </div>
  <p>

    </c:forEach>
    <br>
  <form action="/adduser.jsp">
    <input type="submit" value="add new user">
  </form>

  </body>
</html>
