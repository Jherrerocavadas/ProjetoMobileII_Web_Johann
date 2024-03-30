<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="projetoDesktopJohann.model.bean.Usuario"%>
<%@page import="projetoDesktopJohann.controller.ControllerUsuario"%>
<%@page import="projetoDesktopJohann.model.bean.Prestador"%>
<%@page import="projetoDesktopJohann.controller.ControllerPrestador"%>
<%@page import="projetoDesktopJohann.model.bean.PrestadoresFatecs"%>
<%@page import="projetoDesktopJohann.controller.ControllerPrestadoresFatecs"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idPrestador = Integer.parseInt(request.getParameter("ID_PRESTADOR"));
    int idF = Integer.parseInt(request.getParameter("ID_FATEC"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    PrestadoresFatecs usupes = new PrestadoresFatecs(id,idPrestador,idF,obs);
    ControllerPrestadoresFatecs usupescont = new ControllerPrestadoresFatecs();
    usupes = usupescont.alterar(usupes);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoPrestadoresFatecs.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>    
    
    