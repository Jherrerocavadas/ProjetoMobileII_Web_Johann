<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetoDesktopJohann.model.bean.Prestador"%>
<%@page import="projetoDesktopJohann.controller.ControllerPrestador"%>

<%
    String cod = request.getParameter("IDPRESTADOR");
    int id = Integer.parseInt(cod);
    String nomePrestador = request.getParameter("NOMEPRESTADOR");
    String ramoAtuacao = request.getParameter("RAMOATUACAO");
    String empresa = request.getParameter("EMPRESA");
    String pbusca = request.getParameter("PBUSCA");
    Prestador pes = new Prestador(id, nomePrestador,ramoAtuacao,empresa);
    ControllerPrestador pesCont = new ControllerPrestador();
    pes = pesCont.alterar(pes);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPrestador.jsp?NOMEPRESTADOR=" + pbusca;
    response.sendRedirect(url);
%>