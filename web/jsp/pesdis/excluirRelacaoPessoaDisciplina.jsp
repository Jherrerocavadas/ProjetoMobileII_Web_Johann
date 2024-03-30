<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.model.bean.PessoasDisciplinas"%>
<%@page import="backenddm20231n.controller.ControllerPessoasDisciplinas"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PessoasDisciplinas pesdis = new PessoasDisciplinas(id);
    ControllerPessoasDisciplinas usuPesCont = new ControllerPessoasDisciplinas();
    pesdis = usuPesCont.excluir(pesdis);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoPessoaDisciplina.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>

