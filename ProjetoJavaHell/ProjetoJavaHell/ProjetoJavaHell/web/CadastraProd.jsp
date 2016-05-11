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
        <script src="Funcionario.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="imagemFundo">
            <img src="_imagens/fastFood01.jpg"/>
        </div>
        <div id="interface">
            <header id="cabecalho">

            </header>

            <header id="menuDinamico" align="center">
                <img src="_imagens/cadastraProd.jpg" width="400" height="100"/>
            </header>

            <section id="corpo">
                <form method="post" action=" ${pageContext.request.contextPath}/CadastraProdServlet" method="post">
                    <p id="tituloCadastraProd">Cadastro de Produto</p>
                    <fieldset>
                        <p>Categoria : <input type="text" name="categoria" id="categoriaId" placeholder="Categoria do Produto"/></p>
                        <p>Nome : <input type="text" name="nome" id="nomeId" placeholder="Nome do Produto"/></p>
                        <p>Tamanho : <input type="text" name="tamanho" id="tamanhoId" placeholder="Tamanho do Produto"/></p>
                        <p>Quantidade : <input type="text" name="quantidade" id="quantidadeId" placeholder="Quantidade do Produto"/></p>    
                        <button name="cadastrar" onClick="alert('Cadastro feito'); return true" id="cadastrar">Cadastrar</button>
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
