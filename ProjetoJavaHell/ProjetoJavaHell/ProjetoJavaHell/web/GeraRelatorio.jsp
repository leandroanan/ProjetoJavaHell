<%-- 
    Document   : geraRelatorio
    Created on : 06/05/2016, 21:03:49
    Author     : AX4B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gerar relatório</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Funcionario.css"/>
    </head>
    <body>
        <div id="interface">
            <header id="cabecalho">

            </header>

            <header id="menuDinamico" align="center">
                <img src="_imagens/geraRel.jpg" width="400" height="100"/>
            </header>

            <section id="corpo">
                <p id="tituloGeraRelatorio">Gerar Relatorio</p>
                <form method="post" action="GerarRelatorioServlet">
                    <fieldset>
                        <p>Tipo de Relatorio : <input type="text" name="nomeRelatorio" id="relatorio" placeholder="Relatorio a ser Gerado"/>
                            <button name="gerar" id="gerar">Gerar</button></p>
                    </fieldset>
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
