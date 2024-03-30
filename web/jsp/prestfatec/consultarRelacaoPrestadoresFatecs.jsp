<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - PRESTADORES FATECS</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR - PRESTADORES FATECS</h1>
       <form name="consultarPrestadoresFatecs" action="validaConsultarRelacaoPrestadoresFatecs.jsp" method="post">
           Obs: <input type="text" name ="OBS" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
