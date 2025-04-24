package main;

import java.util.Scanner;
import model.*;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Cofrinho cofrinho = new Cofrinho();

        while (true) {
            System.out.println("\n### MENU COFRINHO ###");
            System.out.println("1 - Adicionar moeda");
            System.out.println("2 - Remover moeda");
            System.out.println("3 - Listar moedas");
            System.out.println("4 - Calcular total em reais");
            System.out.println("0 - Sair");
            System.out.print("Escolha uma opção: ");

            int opcao = scanner.nextInt();

            switch (opcao) {
                case 1:
                    System.out.println("Escolha o tipo de moeda:");
                    System.out.println("1 - Real");
                    System.out.println("2 - Dólar");
                    System.out.println("3 - Euro");
                    int tipoMoeda = scanner.nextInt();

                    System.out.print("Digite o valor: ");
                    double valor = scanner.nextDouble();
                    Moeda moeda = null;

                    switch (tipoMoeda) {
                        case 1:
                            moeda = new Real(valor);
                            break;
                        case 2:
                            moeda = new Dolar(valor);
                            break;
                        case 3:
                            moeda = new Euro(valor);
                            break;
                        default:
                            System.out.println("Opção inválida.");
                            continue;
                    }
                    cofrinho.adicionarMoeda(moeda);
                    break;

                case 2:
                    System.out.println("Digite o valor da moeda a ser removida: ");
                    double valorRemover = scanner.nextDouble();
                    cofrinho.removerMoeda(new Real(valorRemover)); // Apenas como exemplo, precisa de melhoria
                    break;

                case 3:
                    cofrinho.listarMoedas();
                    break;

                case 4:
                    System.out.println("Total no cofrinho em reais: R$ " + cofrinho.calcularTotalEmReais());
                    break;

                case 0:
                    System.out.println("Encerrando o programa...");
                    scanner.close();
                    return;

                default:
                    System.out.println("Opção inválida. Tente novamente.");
            }
        }
    }
}
