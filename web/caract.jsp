<%-- 
    Document   : caract
    Created on : 10-ene-2014, 4:50:03
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
            String [] lista= new String[8];
            lista= manejador.obtenerCaract(request.getParameter("Playas"));
        %>
        
        <h1>Conoce la playa donde surfeas</h1>
        <hr />
        <br><h3>Playa: <%= lista[0] %></h3>
        <table border="2">
            <thead>
                <tr>
                    <td>Lugar</td>
                    <td>Fondo</td>
                    <td>Tipo de ola</td>
                    <td>Nivel</td>
                    <td>Localismo</td>
                    <td>Vestuarios</td>
                    <td>Alquiler</td>
                </tr>
            </thead>
                <tbody>
                <tr>
                    <td><%= lista[1] %></td>
                    <td><%= lista[2] %></td>
                    <td><%= lista[3] %></td>
                    <td><%= lista[4] %></td>
                    <td><%= lista[5] %></td>
                    <td><%= lista[6] %></td>
                    <td><%= lista[7] %></td>
                </tr>
            </tbody>
        </table>
                <form action="index.jsp">
                <h4><input type="submit" value="Inicio" name="submit" /> </h4></form>
                    
    </body>
</html>
