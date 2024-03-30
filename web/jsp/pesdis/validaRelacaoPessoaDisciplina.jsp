<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.PessoasDisciplinas"%>
<%@page import="backenddm20231n.controller.ControllerPessoasDisciplinas"%>
<%
    int idPes = Integer.parseInt(request.getParameter("ID_PES"));
    int idDis = Integer.parseInt(request.getParameter("ID_DIS"));
    String obs = request.getParameter("OBS");
    PessoasDisciplinas pesdis = new PessoasDisciplinas(idPes,idDis,obs);
    ControllerPessoasDisciplinas pesdiscont = new ControllerPessoasDisciplinas();
    pesdis = pesdiscont.inserir(pesdis);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoPessoaDisciplina.jsp";
    response.sendRedirect(url);

%>