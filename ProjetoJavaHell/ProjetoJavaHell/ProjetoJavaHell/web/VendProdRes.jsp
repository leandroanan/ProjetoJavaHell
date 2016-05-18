<%-- 
    Document   : VendProdServlet
    Created on : 18/05/2016, 15:19:31
    Author     : AX4B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="ErroGenerico.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Vender produto</title>
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
                <img src="_imagens/vendeProd.jpg" width="400" height="100"/>
            </header>

            <section id="corpo">
                <p id="tituloVendeProd">Vender Produto</p>
                <form method="post" action="VendProdServlet">
                    <p id="VendProdServlet">Alterar Produto</p>
                    <fieldset>
                        <p>Id</p><input type="text" name="id" value="${requestScope.id}" value="Id" readonly="readonly"/>
                        </br></br><p>Categoria</p><input type="text" required="required" placeholder="Digite a categoria" name="categoria" value="${requestScope.categoria}" value="Categoria" />
                        </br></br><p>Nome</p><input type="text" required="required" placeholder="Digite o nome" name="nome" value="${requestScope.nome}" value="Nome" />
                        </br></br><p>Tamanho</p><input type="text" required="required" placeholder="Digigte o tamanho" name="tamanho" value="${requestScope.tamanho}" value="Tamanho" />
                        </br></br><p>Quantidade</p><input type="text" required="required" placeholder="Digite a quantidade" name="quantidade" value="${requestScope.quantidade}" value="Quantidade" />
                        </br></br><p></p><input type="submit" value='Alterar'/>
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
