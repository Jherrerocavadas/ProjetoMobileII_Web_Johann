<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetoDesktopJohann.model.bean.Usuario"%>
<%@page import="projetoDesktopJohann.model.bean.Prestador"%>
<%@page import="projetoDesktopJohann.controller.ControllerPrestador"%>
<%@page import="java.util.List"%>

<%
    String nomePrestador = request.getParameter("NOMEPRESTADOR");
    Prestador pes = new Prestador(nomePrestador);
    ControllerPrestador pescont = new ControllerPrestador();
    List<Prestador> pess = pescont.listar(pes);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + nomePrestador+"&IDPRESTADOR=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PRESTADORES</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome do prestador</th>
                  <th data-field="Nome">Ramo de atuacao</th>
                  <th data-field="Nome">Nome da empresa</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(pess.isEmpty())) { %>    
                <tbody>
                    <% for (Prestador listaPrestadores : pess) { %>
                        <tr>
                            <td><%=listaPrestadores.getIdPrestador()%></td>
                            <td><%=listaPrestadores.getNomePrestador()%></td>
                            <td><%=listaPrestadores.getRamoAtuacao()%></td>
                            <td><%=listaPrestadores.getEmpresa()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirPrestador.jsp?<%=url + listaPrestadores.getIdPrestador()%>">Excluir</a></td>
                                <td><a href="alterarPrestador.jsp?<%=url + listaPrestadores.getIdPrestador()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>