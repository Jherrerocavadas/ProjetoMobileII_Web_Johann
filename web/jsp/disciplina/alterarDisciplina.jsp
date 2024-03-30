<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Disciplina"%>
<%@page import="backenddm20231n.controller.ControllerDisciplina"%>
<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Disciplina dis = new Disciplina(id);
    ControllerDisciplina disCont = new ControllerDisciplina();
    dis = disCont.buscar(dis);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - DISCIPLINA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR DISCIPLINA</h1>
        <form name="alterarDisciplina" action="validaAlterarDisciplina.jsp" method="post">
            Cpf: <input type="text" name="COD" value="<%=dis.getCod()%>"> <br>
            Nome: <input type="text" name="OBS" value="<%=dis.getObs()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=dis.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>