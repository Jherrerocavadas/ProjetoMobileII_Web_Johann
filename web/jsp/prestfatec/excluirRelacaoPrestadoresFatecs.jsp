<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetoDesktopJohann.model.bean.Usuario"%>
<%@page import="projetoDesktopJohann.model.bean.PrestadoresFatecs"%>
<%@page import="projetoDesktopJohann.controller.ControllerPrestadoresFatecs"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PrestadoresFatecs pesdis = new PrestadoresFatecs(id);
    ControllerPrestadoresFatecs usuPesCont = new ControllerPrestadoresFatecs();
    pesdis = usuPesCont.excluir(pesdis);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoPrestadoresFatecs.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>

