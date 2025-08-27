package com.tarefaTrabalho.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Tarefa {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // auto incremento no banco
    private Long id;
    private Long nome;
    private Long Responsavel;
    private Object DataEntrega;

    // construtores
    public Tarefa() {}

    // getters e setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getNome() {
        return nome;
    }

    public Object getDataEntrega() {
        return DataEntrega;
    }

    public void setDataEntrega(Object dataEntrega) {
    }

    public Long getResponsavel() {
        return Responsavel;
    }
}

