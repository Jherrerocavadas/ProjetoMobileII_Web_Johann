<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.model.bean.PessoasDisciplinas"%>
<%@page import="backenddm20231n.controller.ControllerPessoasDisciplinas"%>

<%
    String obs = request.getParameter("OBS");
    PessoasDisciplinas pesdis = new PessoasDisciplinas(obs);
    ControllerPessoasDisciplinas pesdiscont = new ControllerPessoasDisciplinas();
    List<PessoasDisciplinas> pesdiss = pesdiscont.listar(pesdis);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + pesdis.getObs()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA USUÁRIOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdUsuPessoa">Id</th>
                  <th data-field="IdPessoa">IdPessoa</th>
                  <th data-field="NomePessoa">NomePessoa</th>
                  <th data-field="IdUsuario">IdDis</th>
                  <th data-field="NomeUsuario">NomeDis</th>
                  <th data-field="Observacao">Observacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(pesdiss.isEmpty())) { %>    
                <tbody>
                    <% for (PessoasDisciplinas listaPessoaDis : pesdiss) { %>
                        <tr>
                            <td><%=listaPessoaDis.getId()%></td>
                            <td><%=listaPessoaDis.getIdP()%></td>
                            <td><%=listaPessoaDis.getPessoa().getNome()%></td>
                            <td><%=listaPessoaDis.getIdD()%></td>
                            <td><%=listaPessoaDis.getDisciplina().getCod()%></td>
                            <td><%=listaPessoaDis.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoPessoaDisciplina.jsp?<%=url + listaPessoaDis.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoPessoaDisciplina.jsp?<%=url + listaPessoaDis.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>