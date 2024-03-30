<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetoDesktopJohann.model.bean.Fatec"%>
<%@page import="projetoDesktopJohann.controller.ControllerFatec"%>
<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Fatec pes = new Fatec(id);
    ControllerFatec pesCont = new ControllerFatec();
    pes = pesCont.buscar(pes);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PRESTADOR</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR PRESTADOR</h1>
        <form name="validaAlterarFatec" action="validaAlterarFatec.jsp" method="post">
            Obs: <input type="text" name="OBS" value="<%=pes.getObs()%>"> <br>
            Cod: <input type="text" name="COD" value="<%=pes.getCod()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=pes.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>