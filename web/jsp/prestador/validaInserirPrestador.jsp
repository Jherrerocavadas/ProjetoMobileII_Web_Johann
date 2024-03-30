<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetoDesktopJohann.model.bean.Prestador"%>
<%@page import="projetoDesktopJohann.controller.ControllerPrestador"%>

<%
    String nomePrestador = request.getParameter("NOMEPRESTADOR");
    String ramoAtuacao = request.getParameter("RAMOATUACAO");
    String empresa = request.getParameter("EMPRESA");
 
    Prestador pes =  new Prestador(nomePrestador,ramoAtuacao,empresa);
    ControllerPrestador pescont = new ControllerPrestador();
    pes = pescont.inserir(pes);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirPrestador.jsp";
    response.sendRedirect(url);
%>

