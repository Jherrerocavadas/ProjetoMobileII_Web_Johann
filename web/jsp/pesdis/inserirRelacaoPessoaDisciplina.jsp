<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>
<%@page import="backenddm20231n.model.bean.Disciplina"%>
<%@page import="backenddm20231n.controller.ControllerDisciplina"%>

<%@page import="backenddm20231n.model.bean.PessoasDisciplinas"%>
<%@page import="backenddm20231n.controller.ControllerUsuariosPessoas"%>

<%
    ControllerPessoa pesCont = new ControllerPessoa();
    Pessoa pf = new Pessoa("");
    List<Pessoa> pess = pesCont.listar(pf);

    ControllerDisciplina disCont = new ControllerDisciplina();
    Disciplina disEnt = new Disciplina("");
    List<Disciplina> diss = disCont.listar(disEnt);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR PESSOA DISCIPLINA</title>
    <body>
        <div class="container"/>
            <h1>Inseri PESSOA DISCIPLINA</h1>
            <form name="inseriUsuarioPessoa" action="validaRelacaoPessoaDisciplina.jsp" method="POST">
                <table>
                    <tr>
                        <td>Pessoa:</td>
                        <td>
                            <select NAME ="ID_PES" class="browser-default">
                                <% for (Pessoa pes : pess) { %>
                                    <option value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Disciplinas:</td>
                        <td>
                            <select NAME="ID_DIS" class="browser-default">
                                <% for (Disciplina dis : diss) { %>
                                    <option value="<%=dis.getId()%>"><%=dis.getCod()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
