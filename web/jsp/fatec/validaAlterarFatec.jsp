<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetoDesktopJohann.model.bean.Fatec"%>
<%@page import="projetoDesktopJohann.controller.ControllerFatec"%>

<%
    String codId = request.getParameter("ID");
    int id = Integer.parseInt(codId);
    String cod = request.getParameter("COD");
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    Fatec pes = new Fatec(id,cod,obs);
    ControllerFatec pesCont = new ControllerFatec();
    pes = pesCont.alterar(pes);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarFatec.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>