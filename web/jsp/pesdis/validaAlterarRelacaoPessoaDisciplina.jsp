<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.controller.ControllerUsuario"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>
<%@page import="backenddm20231n.model.bean.PessoasDisciplinas"%>
<%@page import="backenddm20231n.controller.ControllerPessoasDisciplinas"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idPes = Integer.parseInt(request.getParameter("ID_PES"));
    int idDis = Integer.parseInt(request.getParameter("ID_DIS"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    PessoasDisciplinas usupes = new PessoasDisciplinas(id,idPes,idDis,obs);
    ControllerPessoasDisciplinas usupescont = new ControllerPessoasDisciplinas();
    usupes = usupescont.alterar(usupes);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoPessoaDisciplina.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>    
    
    