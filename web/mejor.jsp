<%-- 
    Document   : mejor
    Created on : 10-ene-2014, 4:50:38
    Author     : Bruno
--%>

<%@page import="control.ManejadorBaseDeDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="hoja_estilos.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SurfWaves</title>
    </head>
    <body>
        <%
            ManejadorBaseDeDatos manejador= new ManejadorBaseDeDatos();
            String [] lista= new String[5];
            lista= manejador.mejorSwell();
        %>
        <h1>Hoy tienes que surfear aquí!</h1>
        
        <hr />
        <br><h3>Playa: <%= lista[0] %></h3>
        <table border="2">
            <thead>
                <tr>
                    <td>Marea alta</td>
                    <td>Marea Baja</td>
                    <td>Amanecer</td>
                    <td>Anochecer</td>
                </tr>
            </thead>
                <tbody>
                <tr>
                    <td><%= lista[1] %></td>
                    <td><%= lista[2] %></td>
                    <td><%= lista[3] %></td>
                    <td><%= lista[4] %></td>
                </tr>
            </tbody>
        </table>
                <form action="index.jsp">
                <h4><input type="submit" value="Inicio" name="submit" /> </h4></form>
                    
    </body>
</html>
