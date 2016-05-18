<%-- 
    Document   : GeraRelatorioRes
    Created on : 15/05/2016, 18:16:24
    Author     : AX4B
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="ErroGenerico.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gerar relatório</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Funcionario.css"/>
    </head>
    <body>
        <div id="imagemFundo">
            <img src="_imagens/fastFood01.jpg"/>
        </div>
        <div id="interface">
            <header id="cabecalho">
                <img src="_imagens/logo.jpg " title="Home"/>
            </header>

            <header id="menuDinamico" align="center">
                <img src="_imagens/geraRel.jpg" width="400" height="100"/>
            </header>

            <section id="corpo">
                <p id="tituloGeraRelatorio">Gerar Relatorio</p>
                <form method="post" action="GeraRelatorioServlet">
                    <%
                        List<String> result = (List<String>) request.getAttribute("lista");
                        for (String temp : result) {
                            out.print("</br>" + temp);
                        }
                    %>
                </form>
            </section>              

            <aside id="menuLateral">
                <ul>
                    <li><a href="http://localhost:8080/ProjetoJavaHell/CadastraProd.jsp">CADASTRAR<br>PRODUTO</a></li>
                    <li><a href="http://localhost:8080/ProjetoJavaHell/AlteraProd.jsp">ALTERAR<br>PRODUTO</a></li>
                    <li><a href="http://localhost:8080/ProjetoJavaHell/RemoveProd.jsp">REMOVER<br>PRODUTO</a></li>
                    <li><a href="http://localhost:8080/ProjetoJavaHell/VendProd.jsp">VENDER<br>PRODUTO</a></li>
                    <li><a href="http://localhost:8080/ProjetoJavaHell/GeraRelatorio.jsp">GERAR<br>RELATÓRIO</a></li>
                    <li><a href="http://localhost:8080/ProjetoJavaHell/CadastraFunc.jsp">CADASTRAR<br>FUNCIONÁRIO</a></li>
                    <li><a href="http://localhost:8080/ProjetoJavaHell/PesquisaProd.jsp">PESQUISAR<br>PRODUTO</a></li>
                </ul>
            </aside>

            <footer id="rodape">
                <p>Copyright<!--Simbolo copyright -->&copy; 2016 - BY JAVAHELL TEAM<br></p>
            </footer>

        </div>
    </body>
</html>
