<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Disciplina"%>
<%@page import="backenddm20231n.controller.ControllerDisciplina"%>


<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Disciplina dis = new Disciplina(id);
    ControllerDisciplina disCont = new ControllerDisciplina();
    dis = disCont.excluir(dis);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarDisciplina.jsp?COD=" + pbusca;
    response.sendRedirect(url);
%>