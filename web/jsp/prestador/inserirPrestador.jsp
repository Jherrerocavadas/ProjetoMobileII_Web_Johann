<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - PRESTADOR</title>
    <body>
       <div class="container"/>
        <h1>INSERIR PRESTADOR</h1>
        <form name="inserirPrestador" action="validaInserirPrestador.jsp" method="post">
            nomePrestador: <input type="text" name="NOMEPRESTADOR" value=""> <br>
            ramoAtuacao: <input type="text" name="RAMOATUACAO" value=""> <br>
            empresa: <input type="text" name="NOMEEMPRESA" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
