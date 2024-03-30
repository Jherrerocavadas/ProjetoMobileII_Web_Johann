<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - DISCIPLINA</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR DISCIPLINA</h1>
       <form name="consultarPessoa" action="validaConsultarDisciplina.jsp" method="post">
           COD <input type="text" name ="COD" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
