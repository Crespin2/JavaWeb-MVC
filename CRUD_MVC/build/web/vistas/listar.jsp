<%-- 
    Document   : listar
    Created on : 05-31-2022, 06:42:31 PM
    Author     : Jonat
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Persona"%>
<%@page import="modeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TABLA DE REGISTROS</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <script src="https://unpkg.com/feather-icons"></script>
    </head>
    <body>
        <div class="container">
            <h1>Tabla Personas</h1>
            <br>
             <br>

            
            <a href="Controlador?accion=add">
            <i data-feather="user-plus"></i>
                <script>
                    feather.replace()
                 </script>
                
            </a>
            <br>
            <br>
            
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">DUI</th>
                        <th scope="col">Apellidos</th>
                        <th scope="col">Nombres</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                <%
                    PersonaDAO dao=new PersonaDAO();
                    List<Persona>list=dao.listar();
                    Iterator<Persona>iter=list.iterator();
                    Persona per=null;
                    while(iter.hasNext()){
                        per=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td scope="row"><%= per.getDui()%></td>
                        <td><%= per.getApellidos()%></td>
                        <td><%= per.getNombres()%></td>
                        <td>
                            <a href="Controlador?accion=edit&id=<%= per.getId()%>"><i data-feather="edit"></i>
                            <script>
                                feather.replace()
                             </script>
                             </a>
                          
                            <a href="Controlador?accion=eliminar&id=<%= per.getId()%>">
                            <i data-feather="trash-2"></i>
                            <script>
                                feather.replace()
                             </script>
                            </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

</html>
