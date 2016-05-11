<%-- 
    Document   : cadastraFunc
    Created on : 06/05/2016, 21:04:03
    Author     : AX4B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <img src="_imagens/logo.jpg "/>
            </header>

            <header id="menuDinamico" align="center">
                <img src="_imagens/cadastraFunc.jpg" width="400" height="100"/>
            </header>

            <section id="corpo">
                <header id="rodape">
                    <form name="cadastraFunc" method="post" id="cadastraFuncForm" action="CadastrarFuncServlet">
                        <div class="cadastra">
                            <p id="tituloCadastraFunc">Cadastro de Funcionário</p>
                            <fieldset id="geral">
                                <span>Nome Completo</span>	
                                <input type="text" class="input_text" name="nome" id="name" placeholder="Seu nome completo"/>
                                <span><br><br>Cpf</span>	
                                <input type="text" class="input_text" name="cpf" id="cpfCode" placeholder="Seu cpf"/>
                                <span><br><br>Idade</span>	
                                <input type="text" class="input_text" name="idade" id="age" placeholder="Sua idade"/><br>   
                                <span>Sexo</span>	
                                <input type="radio" name="masculino" value="male" checked>Masculino
                                <input type="radio" name="feminino" value="female"> Feminino<br>
                                <span>Cargo</span>	
                                <input type="text" class="input_text" name="cargo" id="function" placeholder="Seu cargo"/><br>
                                <button name="cadastrar" onClick="alert('Cadastro feito'); return true" id="cadastrar">Cadastrar</button>
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