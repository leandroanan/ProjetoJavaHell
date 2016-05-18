/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ProdutosDao;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AX4B
 */
@WebServlet(name = "AlterarProdutoServlet", urlPatterns = {"/AlterarProdutoServlet"})
public class AlterarProdutoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try
        {
            ProdutosDao obj = new ProdutosDao();
            obj.setId_produto(Integer.parseInt(request.getParameter("nomeProduto")));
            obj.selecionaProduto();
            request.setAttribute("id", obj.getId_produto());
            request.setAttribute("categoria", obj.getCategoria());
            request.setAttribute("nome", obj.getNome());
            request.setAttribute("tamanho", obj.getTamanho());
            request.setAttribute("quantidade", obj.getQuantidade());
            request.getRequestDispatcher("AlteraProdRes.jsp").forward(request, response);
        }
        catch(NumberFormatException | SQLException | ServletException | IOException e){
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
