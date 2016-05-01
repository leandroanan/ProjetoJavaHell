/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author AX4B
 */
public class FuncionarioDao {
    private Connection conn;
    private String sql;
    private PreparedStatement prepareStmt;
    private String nome;
    private String cpf;
    private int idade;
    private String cargo;
    private String sexo;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    
    //CADASTRAR FUNCIONÁRIO
    public void cadastrarFuncionario() throws SQLException{
        try{
            this.conn = Conexao.abreConexao();
            this.sql = "INSERT INTO FUNCIONARIO (NOME, CPF, IDADE, CARGO, SEXO)"
                    + "values (?,?,?,?,?)";
            this.prepareStmt = this.conn.prepareStatement(this.sql);
            this.prepareStmt.setString(2, this.getNome());
            this.prepareStmt.setString(3, this.getCpf());
            this.prepareStmt.setInt(4, this.getIdade());
            this.prepareStmt.setString(5, this.getCargo());
            this.prepareStmt.setString(6, this.getSexo());            
        }
        catch(Exception e){
            System.out.println("Erro ao cadastrar funcionario: " + e);
        }
        finally{
            Conexao.fechaConexao(conn);
            this.prepareStmt.close();
        }
    }
    
}