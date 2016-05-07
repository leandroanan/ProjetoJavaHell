/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author AX4B
 */
public class ProdutosDao {
    private Connection conn;
    private String sql;
    private Statement state;
    private ResultSet resultSet;
    private PreparedStatement prepareStmt;
    private String categoria;
    private String nome;
    private String tamanho;
    private int quantidade;
    private String id_produto;

    public String getId_produto() {
        return id_produto;
    }

    public void setId_produto(String id_produto) {
        this.id_produto = id_produto;
    }
    
    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTamanho() {
        return tamanho;
    }

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }
    
    //ALTERAR PRODUTO
    public void alteraProduto() throws SQLException{
        try{
            this.conn = Conexao.abreConexao();
            this.sql = "UPDATE PRODUTO"
                    + "SET CATEGORIA = " + this.getCategoria()
                    + "SET NOME = " + this.getNome()
                    + "SET TAMANHO = " + this.getTamanho()
                    + "SET QUANTIDADE = " + this.getQuantidade()
                    + "WHERE ID_PRODUTO = " + this.getId_produto();
            this.state = this.conn.createStatement();
            this.state.execute(this.sql);
        }
        catch(Exception e){
            System.out.println("Erro ao alterar produto: " + e);
        }
        finally{
            this.state.close();
            Conexao.fechaConexao(this.conn);
        }            
    }
    
    //REMOVER PRODUTO
    public void removeProduto() throws SQLException{
        try{
            this.conn = Conexao.abreConexao();
            this.state = this.conn.createStatement();
            this.state.executeUpdate("DELETE FROM PRODUTO WHERE ID_PRODUTO = " + this.getId_produto());
        }
        catch(Exception e){
            System.out.println("Erro ao delerar produto: " + e);
        }
        finally{
            this.state.close();
            Conexao.fechaConexao(this.conn);
        }
    }
    
    //PESQUISAR PRODUTO
    public void pesquisaProduto() throws SQLException{
        try{
            this.conn = Conexao.abreConexao();
            this.sql = "SELECT * FROM PRODUTO"
                     + "WHERE PRODUTO LIKE " + "%" + this.getNome() + "%";
            this.prepareStmt = this.conn.prepareStatement(this.sql);
            this.resultSet = this.prepareStmt.executeQuery();
            while(this.resultSet.next()){
                this.setCategoria(this.resultSet.getString(2));
                this.setNome(this.resultSet.getString(3));
                this.setQuantidade(this.resultSet.getInt(4));
                this.setTamanho(this.resultSet.getString(5));
            }
        }
        catch(Exception e){
            System.out.println("Erro ao pesquisar produto: " + e);
        }
        finally{
            this.resultSet.close();
            this.prepareStmt.close();
            Conexao.fechaConexao(this.conn);
        }
    }
    
    //CADASTRAR PRODUTO
    public void cadastrarProduto() throws SQLException{
        try{
            this.conn = Conexao.abreConexao();
            this.sql = "INSERT INTO PRODUTO (CATEGORIA, NOME, TAMANHO, QUANTIDADE)"
                    + "values (?,?,?,?,?)";
            this.prepareStmt = this.conn.prepareStatement(this.sql);
            this.prepareStmt.setInt(1, 1);
            this.prepareStmt.setString(2, this.getCategoria());
            this.prepareStmt.setString(3, this.getNome());
            this.prepareStmt.setString(4, this.getTamanho());
            this.prepareStmt.setInt(5, this.getQuantidade());
            
        }
        catch(Exception e){
            System.out.println("Erro ao cadastrar produto: " + e);
        }
        finally{
            Conexao.fechaConexao(conn);
            this.prepareStmt.close();
        }
    }
    
}
