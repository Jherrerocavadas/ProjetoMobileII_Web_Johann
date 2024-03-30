<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetoDesktopJohann.model.bean.Prestador"%>
<%@page import="projetoDesktopJohann.controller.ControllerPrestador"%>


<%
    String cod = request.getParameter("IDPRESTADOR");
    int id = Integer.parseInt(cod);
    Prestador pes = new Prestador(id);
    ControllerPrestador pesCont = new ControllerPrestador();
    pes = pesCont.excluir(pes);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPrestador.jsp?NOMEPRESTADOR=" + pbusca;
    response.sendRedirect(url);
%>