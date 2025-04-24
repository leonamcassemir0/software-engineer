// Classe abstrata que define um modelo para diferentes tipos de moedas
package model;

public abstract class Moeda {
    protected double valor; // Valor da moeda

    public Moeda(double valor) {
        this.valor = valor;
    }

    // Método abstrato para exibir informações da moeda
    public abstract void info();
    
    // Método abstrato para converter o valor para reais
    public abstract double converterParaReal();
}