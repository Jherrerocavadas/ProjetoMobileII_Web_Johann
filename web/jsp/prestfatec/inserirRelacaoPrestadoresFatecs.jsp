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
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR Prestador Fatec</title>
    <body>
        <div class="container"/>
            <h1>Inserir Prestador Fatec</h1>
            <form name="inserirPrestadoresFatecs" action="validaRelacaoPrestadoresFatecs.jsp" method="POST">
                <table>
                    <tr>
                        <td>Prestador:</td>
                        <td>
                            <select NAME ="ID_PRESTADOR" class="browser-default">
                                <% for (Prestador pes : pess) { %>
                                    <option value="<%=pes.getIdPrestador()%>"><%=pes.getNomePrestador()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Fatecs:</td>
                        <td>
                            <select NAME="ID_FATEC" class="browser-default">
                                <% for (Fatec dis : diss) { %>
                                    <option value="<%=dis.getId()%>"><%=dis.getCod()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Obs:</td>
                        <td><input type="text" name="OBS" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
