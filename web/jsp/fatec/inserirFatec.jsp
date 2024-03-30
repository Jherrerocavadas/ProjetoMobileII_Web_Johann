<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - FATEC</title>
    <body>
       <div class="container"/>
        <h1>INSERIR FATEC</h1>
        <form name="inserirFatec" action="validaInserirFatec.jsp" method="post">
            Cod: <input type="text" name="COD" value=""> <br>
            Obs: <input type="text" name="OBS" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
