<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - FATEC</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR FATEC</h1>
       <form name="validaConsultarFatec" action="validaConsultarFatec.jsp" method="post">
           OBS <input type="text" name ="OBS" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
