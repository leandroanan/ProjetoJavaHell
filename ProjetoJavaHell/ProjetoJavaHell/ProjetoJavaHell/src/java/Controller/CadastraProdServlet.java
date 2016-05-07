/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ProdutosDao;
import java.io.IOException;
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
@WebServlet(name = "CadastraProdServlet", urlPatterns = {"/CadastraProdServlet"})
public class CadastraProdServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
        ProdutosDao obj = new ProdutosDao();
        try{            
            obj.setCategoria(request.getParameter("categoria"));
            obj.setNome(request.getParameter("nome"));
            obj.setTamanho(request.getParameter("tamanho"));
            obj.setQuantidade(Integer.parseInt(request.getParameter("quantidade")));
            obj.cadastrarProduto();
        }
        catch(NumberFormatException | SQLException e){
            System.out.println("Erro: " + e);
        }
        RequestDispatcher rd = request.getRequestDispatcher("CadastraProd.jsp");
        rd.forward(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
