package com.tarefaTrabalho.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class TarefaTrabalhoApplication {

	public static void main(String[] args) {
        ConfigurableApplicationContext run = SpringApplication.run(TarefaTrabalhoApplication.class, args);
    }

}
