/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.FuncionarioDao;
import Model.MovimentacaoDao;
import Model.ProdutosDao;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AX4B
 */
@WebServlet(name = "GeraRelatorioServlet", urlPatterns = {"/GeraRelatorioServlet"})
public class GeraRelatorioServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        try{
            String tipoRelatorio = request.getParameter("tipoRelatorio");
            switch (tipoRelatorio) {
                case "listarProdutos":
                    {
                        ProdutosDao obj = new ProdutosDao();
                        obj.insereListaProdutos();
                        List<String> lista = obj.getProdutos();
                        request.setAttribute("lista", lista);
                        break;
                    }
                case "listarFuncionarios":
                    {
                        FuncionarioDao obj = new FuncionarioDao();
                        obj.insereListaFuncionarios();
                        List<String> lista = obj.getFuncionarios();
                        request.setAttribute("lista", lista);
                        break;
                    }
                default:
                    {
                        MovimentacaoDao obj = new MovimentacaoDao();
                        obj.insereListaMovimentacao();
                        List<String> lista = obj.getMovimentacao();
                        request.setAttribute("lista", lista);
                        break;
                    }
            }
            request.getRequestDispatcher("GeraRelatorioRes.jsp").forward(request, response);
        }
        catch(IOException | SQLException | ServletException e){
            System.out.println(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(GeraRelatorioServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(GeraRelatorioServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
