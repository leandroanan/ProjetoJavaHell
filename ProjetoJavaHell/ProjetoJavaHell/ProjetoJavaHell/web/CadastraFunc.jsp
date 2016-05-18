<%-- 
    Document   : cadastraFunc
    Created on : 06/05/2016, 21:04:03
    Author     : AX4B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="ErroGenerico.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastrar funcionario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Funcionario.css"/>
        <script language="javascript" src="Funcionario.js"></script>
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
                <img src="_imagens/cadastraFunc.jpg" width="400" height="100"/>
            </header>

            <section id="corpo">
                <header id="rodape">
                    <form method="post" action=" ${pageContext.request.contextPath}/CadastraFuncServlet" method="post">
                        <div class="cadastra">
                            <p id="tituloCadastraFunc">Cadastro de Funcionário</p>
                            <fieldset id="geral">                              
                                <p>Nome</p><input type="text" name="nome" required="required" pattern="[a-z\s]+$" id="name" placeholder="Seu nome completo"/>
                                </br><p>CPF</p><input type="text" name="cpf" id="cpfCode" placeholder="Seu cpf"/>                              	
                                </br><p>Idade</p><input type="text" required="required" pattern="[0-9]+$" name="idade" id="age" placeholder="Sua idade"/><br>   
                                <p>Sexo</p>
                                <input type="radio" name="sexo" value="Masculino" checked>Masculino
                                <input type="radio" name="sexo" value="Feminino"> Feminino            	
                                </br><p>Cargo</p><input type="text" name="cargo" required="required" pattern="[a-z\s]+$" id="function" placeholder="Seu cargo"/><br>
                                </br><button name="cadastrar" id="cadastrar">Cadastrar</button>
                            </fieldset>                        
                        </div>
                    </form>  
                </header>
            </section>

            <aside id="menuLateral">
                <ul id="idBotoes">
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
            </footer>>
        </div>
    </body>
</html>