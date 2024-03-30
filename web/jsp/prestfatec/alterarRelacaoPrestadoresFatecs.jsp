<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="projetoDesktopJohann.model.bean.Prestador"%>
<%@page import="projetoDesktopJohann.controller.ControllerPrestador"%>
<%@page import="projetoDesktopJohann.model.bean.Fatec"%>
<%@page import="projetoDesktopJohann.controller.ControllerFatec"%>
<%@page import="projetoDesktopJohann.model.bean.PrestadoresFatecs"%>
<%@page import="projetoDesktopJohann.controller.ControllerPrestadoresFatecs"%>

<%
    ControllerPrestador pesCont = new ControllerPrestador();
    Prestador pf = new Prestador("");
    List<Prestador> pess = pesCont.listar(pf);

    ControllerFatec disCont = new ControllerFatec();
    Fatec disEnt = new Fatec("");
    List<Fatec> diss = disCont.listar(disEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PrestadoresFatecs usuPes = new PrestadoresFatecs(id);
    ControllerPrestadoresFatecs usuPesCont = new ControllerPrestadoresFatecs();
    usuPes = usuPesCont.buscar(usuPes);
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PRESTADOR FATEC</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - PRESTADOR FATEC</h1>
        <form name="alterarPrestadoresFatecs" action="validaAlterarRelacaoPrestadoresFatecs.jsp" method="post">
            <table>
                <tr>
                    <td>Prestador</td>
                        <td>
                            <select NAME="ID_PRESTADOR" class="browser-default">
                                <% for (Prestador p : pess) { %>
                                    <% if( p.getIdPrestador() == usuPes.getIdPrestador()) { %>
                                        <option selected value="<%=p.getIdPrestador()%>"><%=p.getNomePrestador()%></option>
                                    <% } else { %>
                                        <option value="<%=p.getIdPrestador()%>"><%=p.getNomePrestador()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Fatec</td>
                        <td>
                            <select NAME ="ID_FATEC" class="browser-default">
                                <% for (Fatec di : diss) { %>
                                    <% if( di.getId()== usuPes.getIdF()) { %>
                                    <option selected value="<%=di.getId()%>"><%=di.getCod()%></option>
                                    <% } else { %>
                                    <option value="<%=di.getId()%>"><%=di.getCod()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observacao:</td>
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