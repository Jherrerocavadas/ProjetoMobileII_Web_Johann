<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Disciplina"%>
<%@page import="backenddm20231n.controller.ControllerDisciplina"%>

<%
    String cod = request.getParameter("COD");
    String obs = request.getParameter("OBS");
 
    Disciplina dis = new Disciplina(cod,obs);
    ControllerDisciplina discont = new ControllerDisciplina();
    dis = discont.inserir(dis);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirDisciplina.jsp";
    response.sendRedirect(url);
%>

