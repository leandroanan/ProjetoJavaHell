<%-- 
    Document   : cadastraProd
    Created on : 06/05/2016, 21:01:36
    Author     : AX4B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastrar produto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Funcionario.css"/>
    </head>
    <body>
        <div id="interface">
            <header id="cabecalho">

            </header>

            <header id="menuDinamico">

            </header>

            <section id="corpo">
                <form method="post" action="CadastrarProdutoServlet">
                    <p id="tituloCadastraProd">Cadastro de Produto</p>
                    <fieldset>
                        <p>Categoria : <input type="text" name="categoria" id="categoria" placeholder="Categoria do Produto"/></p>
                        <p>Nome : <input type="text" name="nome" id="nome" placeholder="Nome do Produto"/></p>
                        <p>Tamanho : <input type="text" name="tamanho" id="tamanho" placeholder="Tamanho do Produto"/></p>
                        <p>Quantidade : <input type="text" name="quantidade" id="quantidade" placeholder="Quantidade do Produto"/></p>    
                        <button name="cadastrar" id="cadastrar">Cadastrar</button>
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
