<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>
<%@page import="backenddm20231n.model.bean.Disciplina"%>
<%@page import="backenddm20231n.controller.ControllerDisciplina"%>
<%@page import="backenddm20231n.model.bean.PessoasDisciplinas"%>
<%@page import="backenddm20231n.controller.ControllerPessoasDisciplinas"%>

<%
    ControllerPessoa pesCont = new ControllerPessoa();
    Pessoa pf = new Pessoa("");
    List<Pessoa> pess = pesCont.listar(pf);

    ControllerDisciplina disCont = new ControllerDisciplina();
    Disciplina disEnt = new Disciplina("");
    List<Disciplina> diss = disCont.listar(disEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PessoasDisciplinas usuPes = new PessoasDisciplinas(id);
    ControllerPessoasDisciplinas usuPesCont = new ControllerPessoasDisciplinas();
    usuPes = usuPesCont.buscar(usuPes);
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - USUÁRIO PESSOA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - USUÁRIO PESSOA</h1>
        <form name="alterarUsuarioPessoa" action="validaAlterarRelacaoPessoaDisciplina.jsp" method="post">
            <table>
                <tr>
                    <td>Pessoa</td>
                        <td>
                            <select NAME="ID_PES" class="browser-default">
                                <% for (Pessoa p : pess) { %>
                                    <% if( p.getId() == usuPes.getIdP()) { %>
                                        <option selected value="<%=p.getId()%>"><%=p.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=p.getId()%>"><%=p.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Disciplina</td>
                        <td>
                            <select NAME ="ID_DIS" class="browser-default">
                                <% for (Disciplina di : diss) { %>
                                    <% if( di.getId()== usuPes.getIdD()) { %>
                                    <option selected value="<%=di.getId()%>"><%=di.getCod()%></option>
                                    <% } else { %>
                                    <option value="<%=di.getId()%>"><%=di.getCod()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value="<%=usuPes.getObs()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=usuPes.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>