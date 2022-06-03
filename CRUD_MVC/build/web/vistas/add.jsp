<%-- 
    Document   : add
    Created on : 05-31-2022, 06:41:54 PM
    Author     : Jonat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Registro</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    </head>
    <body>
        
        <div class="container">
            <h1>Agregar Persona</h1>
            <br>
            <form>
      <div class="form-group cl-3" >
      <label>DUI:</label>
      <input type="text" class="form-control col-2"  name="txtDui" value="" required>
    </div>
      <div class="form-group">
      <label>Apellidos:</label>
      <input type="text" class="form-control col-2"  name="txtApellidos" value="" required>
    </div>
     <div class="form-group">
      <label>Nombres:</label>
      <input type="text" class="form-control col-2"  name="txtNombres" value="" required>
    </div>
    <input type="submit" name="accion" value="Agregar" />
    <a href="Controlador?accion=listar">Regresar</a>
  </form>
            </div>
    </body>
     <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

</html>
