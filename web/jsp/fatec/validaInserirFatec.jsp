<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetoDesktopJohann.model.bean.Fatec"%>
<%@page import="projetoDesktopJohann.controller.ControllerFatec"%>

<%
    String cod = request.getParameter("COD");
    String obs = request.getParameter("OBS");
 
    Fatec fatec = new Fatec(cod,obs);
    ControllerFatec fateccont = new ControllerFatec();
    fatec = fateccont.inserir(fatec);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirFatec.jsp";
    response.sendRedirect(url);
%>

