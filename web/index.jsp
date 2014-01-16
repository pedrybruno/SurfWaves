<%-- 
    Document   : index
    Created on : 09-ene-2014, 23:01:03
    Author     : Bruno
--%>

<%@page import="control.ManejadorBaseDeDatos"%>
<%@page import="java.util.ArrayList"%>
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
            ManejadorBaseDeDatos manejador = new ManejadorBaseDeDatos();
            ArrayList<String> lista = new ArrayList();
            lista = manejador.obtenerPlayas();
        %>
        <h1>Surfea sobre seguro...
            conoce las condiciones de tus playas antes de tirarte al agua.</h1>
        <hr />
        <h2><br>Características de la playa:</h2>
        <h2>
            <form action="caract.jsp">
                <select name="Playas">
                    <% for (int i = 0; i < lista.size(); i++) {%>
                    <option>
                        <%= lista.get(i)%>
                    </option>
                    <% }
                        manejador.cerrar();
                    %>
                </select>

                <input type="submit" value="Características" name="submit" /></form>

        <h2><br>Previsión de mareas para hoy:</h2>
        <h2>
            <form action="marea.jsp">
                <select name="Playas">
                    <% for (int i = 0; i < lista.size(); i++) {%>
                    <option>
                        <%= lista.get(i)%>
                    </option>
                    <% }
                        manejador.cerrar();
                    %>
                </select>
            <input type="submit" value="Marea" name="submit" /></form>

            <br>
            <br>
        </h2>
        <h2><form action="mejor.jsp">Playa con el mejor Swell: 

                <input type="submit" value="Mejor Swell" name="submit" /></form>
        </h2>
    </body>
</html>
