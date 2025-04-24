// Classe Euro que herda de Moeda
package model;

public class Euro extends Moeda {
    private static final double TAXA_CONVERSAO = 5.5; // Exemplo: 1 euro = 5.5 reais

    public Euro(double valor) {
        super(valor);
    }

    @Override
    public void info() {
        System.out.println("Moeda: Euro | Valor: € " + valor);
    }

    @Override
    public double converterParaReal() {
        return valor * TAXA_CONVERSAO; // Converte para reais
    }
}
