package com.tarefaTrabalho.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.tarefaTrabalho.demo.model.Tarefa;

public interface TarefaRepository extends JpaRepository<Tarefa, Long> {
}
