<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- 
    Autor: Herculano De Biasi
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo JSP</title>
    </head>
    <body>
    	<p>
	    	<%
	    		String nome = "DEV-TI";
	    		out.println("Curso: " + nome + "<br>");
	    	%>
	    	Nome: <%= nome %> <br>
    	</p>
    	
    	<p>
    		Produto: <c:out value="${produto.nome}"/> <br>
    		Produto: ${produto.nome}<br>
    		<%= request.getAttribute("produto") %>
   		</p>
   		
   		<table border="1">
	   		<c:forEach var="p" items="${produtos}" varStatus="id">
		   		<tr bgcolor="#${id.count % 2 == 0 ? 'ff0000' : '0000ff' }" >
	        		<td>${p.nome}</td>
	        		<td>${p.quantidade}</td>
	        		<td>${p.valor}</td>
	      		</tr>
		    </c:forEach>
    	</table>
    	
    	<br>
        <% for(int x = 0; x < 5; x++) { %>
            Olá Mundo com laço: <%= x + 1 %><br>
        <%}%>
    </body>
</html>