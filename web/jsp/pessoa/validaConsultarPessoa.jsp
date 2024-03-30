<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>
<%@page import="java.util.List"%>

<%
    String nome = request.getParameter("NOME");
    Pessoa pes = new Pessoa(nome);
    ControllerPessoa pescont = new ControllerPessoa();
    List<Pessoa> pess = pescont.listar(pes);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + nome+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PESSOAS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Cpf">Cpf</th>
                  <th data-field="Nome">Tipo</th>
                  <th data-field="Email">Email</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(pess.isEmpty())) { %>    
                <tbody>
                    <% for (Pessoa listaPessoas : pess) { %>
                        <tr>
                            <td><%=listaPessoas.getId()%></td>
                            <td><%=listaPessoas.getNome()%></td>
                            <td><%=listaPessoas.getCpf()%></td>
                            <td><%=listaPessoas.getTipo()%></td>
                            <td><%=listaPessoas.getEmail()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirPessoa.jsp?<%=url + listaPessoas.getId()%>">Excluir</a></td>
                                <td><a href="alterarPessoa.jsp?<%=url + listaPessoas.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>