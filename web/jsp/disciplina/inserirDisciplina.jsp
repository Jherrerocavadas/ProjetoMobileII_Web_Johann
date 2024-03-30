<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - DISCIPLINA</title>
    <body>
       <div class="container"/>
        <h1>INSERIR DISCIPLINA</h1>
        <form name="inserirPessoa" action="validaInserirDisciplina.jsp" method="post">
            COD: <input type="text" name="COD" value=""> <br>
            OBS: <input type="text" name="OBS" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
