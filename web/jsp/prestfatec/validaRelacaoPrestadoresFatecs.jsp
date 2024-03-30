<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetoDesktopJohann.model.bean.PrestadoresFatecs"%>
<%@page import="projetoDesktopJohann.controller.ControllerPrestadoresFatecs"%>
<%
    int idPrestador = Integer.parseInt(request.getParameter("ID_PRESTADOR"));
    int idF = Integer.parseInt(request.getParameter("ID_FATEC"));
    String obs = request.getParameter("OBS");
    PrestadoresFatecs pesdis = new PrestadoresFatecs(idPrestador,idF,obs);
    ControllerPrestadoresFatecs pesdiscont = new ControllerPrestadoresFatecs();
    pesdis = pesdiscont.inserir(pesdis);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoPrestadoresFatecs.jsp";
    response.sendRedirect(url);

%>