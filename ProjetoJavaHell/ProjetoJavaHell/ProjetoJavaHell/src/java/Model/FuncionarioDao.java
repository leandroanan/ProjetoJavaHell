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

/**
 *
 * @author AX4B
 */
public class FuncionarioDao {
    private Connection conn;
    private String sql;
    private ResultSet resultSet;
    private PreparedStatement prepareStmt;
    private String nome;
    private String cpf;
    private int idade;
    private String cargo;
    private String sexo;
    private int id_funcionario;
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getId_funcionario() {
        return id_funcionario;
    }

    public void setId_funcionario(int id_funcionario) {
        this.id_funcionario = id_funcionario;
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
            this.getIdFuncionario();
            this.conn = Conexao.abreConexao();
            this.sql = "INSERT INTO FUNCIONARIO (ID_FUNCIONARIO, NOME, CPF, IDADE, CARGO, SEXO)"
                    + "values (?,?,?,?,?,?)";
            this.prepareStmt = this.conn.prepareStatement(this.sql);
            this.prepareStmt.setInt(1, this.getId_funcionario());
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
    
    //Verificar o proximo id de funcionario disponivel
    public void getIdFuncionario() throws SQLException {
        try {
            this.conn = Conexao.abreConexao();
            this.sql = "SELECT MAX(ID_FUNCIONARIO) from FUNCIONARIO";
            this.prepareStmt = this.conn.prepareStatement(this.sql);
            this.resultSet = this.prepareStmt.executeQuery();
            this.setId_funcionario(this.resultSet.getInt(1) + 1);
        } catch (SQLException | NumberFormatException e) {
            System.out.println("Erro: " + e);
        }
        finally{
            this.prepareStmt.close();
            Conexao.fechaConexao(conn);
        }
    }
    
}