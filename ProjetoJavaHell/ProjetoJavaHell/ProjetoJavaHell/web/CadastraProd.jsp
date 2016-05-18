<%-- 
    Document   : cadastraProd
    Created on : 06/05/2016, 21:01:36
    Author     : AX4B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="ErroGenerico.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastrar produto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Funcionario.css"/>
        <script src="Funcionario.js" type="text/javascript"></script>
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
                <img src="_imagens/cadastraProd.jpg" width="400" height="100"/>
            </header>

            <section id="corpo">
                <form method="post" action=" ${pageContext.request.contextPath}/CadastraProdServlet" method="post">
                    <p id="tituloCadastraProd">Cadastro de Produto</p>
                    <fieldset>
                        </br><p>Categoria: </p><input type="text" name="categoria" required="required" id="categoriaId" placeholder="Categoria do Produto"/>
                        </br><p>Nome: </p><input type="text" name="nome" required="required" id="nomeId" placeholder="Nome do Produto"/>
                        </br><p>Tamanho: </p><input type="text" name="tamanho" required="required" id="tamanhoId" placeholder="Tamanho do Produto"/>
                        </br><p>Quantidade: </p><input type="text" name="quantidade" required="required" pattern="[0-9]+$" id="quantidadeId" placeholder="Quantidade do Produto"/>    
                        </br></br><button name="cadastrar" id="cadastrar">Cadastrar</button>
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
