<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.model.bean.Disciplina"%>
<%@page import="backenddm20231n.controller.ControllerDisciplina"%>
<%@page import="java.util.List"%>

<%
    String cod = request.getParameter("COD");
    Disciplina dis = new Disciplina(cod);
    ControllerDisciplina discont = new ControllerDisciplina();
    List<Disciplina> diss = discont.listar(dis);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + cod+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PESSOAS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Cod">Cod</th>
                  <th data-field="Obs">Obs</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(diss.isEmpty())) { %>    
                <tbody>
                    <% for (Disciplina disSaida : diss) { %>
                        <tr>
                            <td><%=disSaida.getId()%></td>
                            <td><%=disSaida.getCod()%></td>
                            <td><%=disSaida.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirDisciplina.jsp?<%=url + disSaida.getId()%>">Excluir</a></td>
                                <td><a href="alterarDisciplina.jsp?<%=url + disSaida.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>