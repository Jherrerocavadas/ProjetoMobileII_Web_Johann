<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - PRESTADOR</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR PRESTADOR</h1>
       <form name="consultarPrestador" action="validaConsultarPrestador.jsp" method="post">
           NOME DO PRESTADOR <input type="text" name ="NOMEPRESTADOR" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
