<%-- 
    Document   : newjsp
    Created on : 29/08/2023, 6:32:49 p. m.
    Author     : mh684
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
        <link href="estilo/css.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
         int grande, mediano, pequeño, hor, totP, cosT;
         grande = (request.getParameter("perrosG") != null) ? Integer.parseInt(request.getParameter("perrosG")) : 0;
         mediano = (request.getParameter("perrosM") != null) ? Integer.parseInt(request.getParameter("perrosM")) : 0;
         pequeño = (request.getParameter("perrosP") != null) ? Integer.parseInt(request.getParameter("perrosP")) : 0;
         hor = (request.getParameter("horas") != null) ? Integer.parseInt(request.getParameter("horas")) : 0;
         totP = grande+mediano+pequeño;
         
         cosT = ((grande*10000)+(mediano*5000)+(pequeño*3000))*hor;
         if (totP > 1) {
             cosT = (int)(cosT - (cosT * 0.1));
         }
         
        %>

        <h2>Resultado</h2>
        <h4>Costo Total: $<%= cosT %></h4>
        <form action="index.html" method="post">
            <input class="boton" type="submit" value="Regresar">
        </form>
    </body>
</html>
