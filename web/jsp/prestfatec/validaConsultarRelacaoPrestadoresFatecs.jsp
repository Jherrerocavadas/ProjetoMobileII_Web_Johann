<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="projetoDesktopJohann.model.bean.Usuario"%>
<%@page import="projetoDesktopJohann.model.bean.PrestadoresFatecs"%>
<%@page import="projetoDesktopJohann.controller.ControllerPrestadoresFatecs"%>

<%
    String obs = request.getParameter("OBS");
    PrestadoresFatecs pesdis = new PrestadoresFatecs(obs);
    ControllerPrestadoresFatecs pesdiscont = new ControllerPrestadoresFatecs();
    List<PrestadoresFatecs> pesdiss = pesdiscont.listar(pesdis);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + pesdis.getObs()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PRESTADOR FATEC</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdPrestadorFatec">IdPrestadorFatec</th>
                  <th data-field="IdPrestador">IdPrestador</th>
                  <th data-field="NomePrestador">NomePrestador</th>
                  <th data-field="RamoAtuacao">RamoAtuacao</th>
                  <th data-field="Empresa">Empresa</th>
                  <th data-field="IdFatec">IdFatec</th>
                  <th data-field="Cod">Cod</th>
                  <th data-field="Observacao">Observacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(pesdiss.isEmpty())) { %>    
                <tbody>
                    <% for (PrestadoresFatecs listaPessoaDis : pesdiss) { %>
                        <tr>
                            <td><%=listaPessoaDis.getId()%></td>
                            <td><%=listaPessoaDis.getIdPrestador()%></td>
                            <td><%=listaPessoaDis.getPrestador().getNomePrestador()%></td>
                            <td><%=listaPessoaDis.getPrestador().getRamoAtuacao()%></td>
                            <td><%=listaPessoaDis.getPrestador().getEmpresa()%></td>
                            <td><%=listaPessoaDis.getIdF()%></td>
                            <td><%=listaPessoaDis.getFatec().getCod()%></td>
                            <td><%=listaPessoaDis.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoPrestadoresFatecs.jsp?<%=url + listaPessoaDis.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoPrestadoresFatecs.jsp?<%=url + listaPessoaDis.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>