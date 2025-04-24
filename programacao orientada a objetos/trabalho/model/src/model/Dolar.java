// Classe Dolar que herda de Moeda
package model;

public class Dolar extends Moeda {
    private static final double TAXA_CONVERSAO = 5.0; // Exemplo: 1 dólar = 5 reais

    public Dolar(double valor) {
        super(valor);
    }

    @Override
    public void info() {
        System.out.println("Moeda: Dólar | Valor: US$ " + valor);
    }

    @Override
    public double converterParaReal() {
        return valor * TAXA_CONVERSAO; // Converte para reais
    }
}
