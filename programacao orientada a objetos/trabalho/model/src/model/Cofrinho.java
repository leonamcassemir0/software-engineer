// Classe Cofrinho que gerencia as moedas
package model;

import java.util.ArrayList;
import java.util.List;

public class Cofrinho {
    private List<Moeda> moedas; // Lista de moedas no cofrinho

    public Cofrinho() {
        this.moedas = new ArrayList<>();
    }

    // Método para adicionar uma moeda ao cofrinho
    public void adicionarMoeda(Moeda moeda) {
        moedas.add(moeda);
        System.out.println("Moeda adicionada com sucesso!");
    }

    // Método para remover uma moeda do cofrinho
    public void removerMoeda(Moeda moeda) {
        if (moedas.remove(moeda)) {
            System.out.println("Moeda removida com sucesso!");
        } else {
            System.out.println("Moeda não encontrada.");
        }
    }

    // Método para listar todas as moedas do cofrinho
    public void listarMoedas() {
        if (moedas.isEmpty()) {
            System.out.println("Cofrinho vazio.");
        } else {
            for (Moeda moeda : moedas) {
                moeda.info(); // Exibe as informações de cada moeda
            }
        }
    }

    // Método para calcular o total do cofrinho convertido para reais
    public double calcularTotalEmReais() {
        double total = 0;
        for (Moeda moeda : moedas) {
            total += moeda.converterParaReal();
        }
        return total;
    }
}