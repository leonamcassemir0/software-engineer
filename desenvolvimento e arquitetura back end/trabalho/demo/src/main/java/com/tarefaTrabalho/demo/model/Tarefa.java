package com.tarefaTrabalho.demo.model;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
public class Tarefa {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;   // chave primária obrigatória

    private String nome;

    private String responsavel;

    @Column(name = "data_entrega")
    private LocalDate dataEntrega;

    // ✅ Construtor vazio (necessário para o Hibernate)
    public Tarefa() {}

    // ✅ Construtor com argumentos
    public Tarefa(String nome, String responsavel, LocalDate dataEntrega) {
        this.nome = nome;
        this.responsavel = responsavel;
        this.dataEntrega = dataEntrega;
    }

    // Getters e Setters
    public Long getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getResponsavel() {
        return responsavel;
    }

    public void setResponsavel(String responsavel) {
        this.responsavel = responsavel;
    }

    public LocalDate getDataEntrega() {
        return dataEntrega;
    }

    public void setDataEntrega(LocalDate dataEntrega) {
        this.dataEntrega = dataEntrega;
    }
}
