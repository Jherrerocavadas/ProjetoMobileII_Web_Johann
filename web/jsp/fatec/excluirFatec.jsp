<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetoDesktopJohann.model.bean.Fatec"%>
<%@page import="projetoDesktopJohann.controller.ControllerFatec"%>


<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Fatec pes = new Fatec(id);
    ControllerFatec pesCont = new ControllerFatec();
    pes = pesCont.excluir(pes);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarFatec.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>