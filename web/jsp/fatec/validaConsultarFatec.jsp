<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetoDesktopJohann.model.bean.Usuario"%>
<%@page import="projetoDesktopJohann.model.bean.Fatec"%>
<%@page import="projetoDesktopJohann.controller.ControllerFatec"%>
<%@page import="java.util.List"%>

<%
    String obs = request.getParameter("OBS");
    Fatec pes = new Fatec(obs);
    ControllerFatec pescont = new ControllerFatec();
    List<Fatec> pess = pescont.listar(pes);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + obs+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA Fatec</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Cod da Fatec</th>
                  <th data-field="Nome">Obs da Fatec</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(pess.isEmpty())) { %>    
                <tbody>
                    <% for (Fatec listaFatec : pess) { %>
                        <tr>
                            <td><%=listaFatec.getId()%></td>
                            <td><%=listaFatec.getCod()%></td>
                            <td><%=listaFatec.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirFatec.jsp?<%=url + listaFatec.getId()%>">Excluir</a></td>
                                <td><a href="alterarFatec.jsp?<%=url + listaFatec.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>