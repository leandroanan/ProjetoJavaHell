/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author AX4B
 */
public class MovimentacaoDao {
    private String tipo_movimentacao;
    private int id_funcionario;
    private int id_produto;
    private int quantidade;
    private Connection conn;
    private String sql;
    private PreparedStatement prepareStmt;
    private Statement state;
    private String operador;

    public String getTipo_movimentacao() {
        return tipo_movimentacao;
    }

    public void setTipo_movimentacao(String tipo_movimentacao) {
        this.tipo_movimentacao = tipo_movimentacao;
    }

    public int getId_funcionario() {
        return id_funcionario;
    }

    public void setId_funcionario(int id_funcionario) {
        this.id_funcionario = id_funcionario;
    }

    public int getId_produto() {
        return id_produto;
    }

    public void setId_produto(int id_produto) {
        this.id_produto = id_produto;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public String getOperador() {
        return operador;
    }

    public void setOperador(String operador) {
        this.operador = operador;
    }
    
    //MOVIMENTACAO DE ENTRADA OU SAÍDA(VENDA)
    public void insereMovimentacao() throws SQLException{
        try{
            this.conn = Conexao.abreConexao();
            this.sql = "INSERT INTO MOVIMENTACAO (TIPO_MOVIMENTACAO, ID_FUNCIONARIO, ID_PRODUTO)"
                    + "values (?,?,?)";
            this.prepareStmt = this.conn.prepareStatement(this.sql);
            this.prepareStmt.setString(2, this.getTipo_movimentacao());
            this.prepareStmt.setInt(3, this.getId_funcionario());
            this.prepareStmt.setInt(4, this.getId_produto());
        }
        catch(Exception e){
            System.out.println("Erro ao movimentar estoque: " + e);
        }
        finally{
            Conexao.fechaConexao(conn);
            this.prepareStmt.close();
        }   
    }
        
    public void movimentaProduto() throws SQLException{
        try{
            if (this.getTipo_movimentacao().equals("Venda"))
                this.operador = "-";
            else
                this.operador = "+";            
            this.conn = Conexao.abreConexao();
            this.sql = "UPDATE PRODUTO"
                    + "SET QUANTIDADE = QUANTIDADE "+ this.operador + this.getQuantidade()
                    + "WHERE ID_PRODUTO = " + this.getId_produto();
            this.state = this.conn.createStatement();
            this.state.execute(this.sql);
        }
        catch(Exception e){
            System.out.println("Erro na movimentação de produto: " + e);
        }
        finally{
            this.state.close();
            Conexao.fechaConexao(this.conn);
        }
    }    
    
}
