/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ProdutosDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AX4B
 */
@WebServlet(name = "AlterarProdutoServletRes", urlPatterns = {"/AlterarProdutoServletRes"})
public class AlterarProdutoServletRes extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            ProdutosDao obj = new ProdutosDao();
            obj.setId_produto(Integer.parseInt(request.getParameter("id")));
            obj.setCategoria(request.getParameter("categoria"));
            obj.setNome(request.getParameter("nome"));
            obj.setQuantidade(Integer.parseInt(request.getParameter("quantidade")));
            obj.setTamanho(request.getParameter("tamanho"));
            obj.alteraProduto();
            RequestDispatcher rd = request.getRequestDispatcher("AlteraProdRes.jsp");
            rd.forward(request, response);
        }
        catch(NumberFormatException | SQLException e){
            System.out.println(e);
        }
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
