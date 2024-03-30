<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetoDesktopJohann.model.bean.Prestador"%>
<%@page import="projetoDesktopJohann.controller.ControllerPrestador"%>
<%
    String cod = request.getParameter("IDPRESTADOR");
    int id = Integer.parseInt(cod);
    Prestador pes = new Prestador(id);
    ControllerPrestador pesCont = new ControllerPrestador();
    pes = pesCont.buscar(pes);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PRESTADOR</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR PRESTADOR</h1>
        <form name="alterarPrestador" action="validaAlterarPrestador.jsp" method="post">
            nomePrestador: <input type="text" name="NOMEPRESTADOR" value="<%=pes.getNomePrestador()%>"> <br>
            ramoAtuacao: <input type="text" name="RAMOATUACAO" value="<%=pes.getRamoAtuacao()%>"> <br>
            empresa: <input type="text" name="EMPRESA" value="<%=pes.getEmpresa()%>"> <br>
            <input type="HIDDEN" name="IDPRESTADOR" value="<%=pes.getIdPrestador()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>