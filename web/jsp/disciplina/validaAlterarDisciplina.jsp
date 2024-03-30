<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Disciplina"%>
<%@page import="backenddm20231n.controller.ControllerDisciplina"%>

<%
    String codD = request.getParameter("ID");
    int id = Integer.parseInt(codD);
    String cod = request.getParameter("COD");
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    Disciplina dis = new Disciplina(id,cod,obs);
    ControllerDisciplina pesCont = new ControllerDisciplina();
    dis = pesCont.alterar(dis);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarDisciplina.jsp?COD=" + pbusca;
    response.sendRedirect(url);
%>