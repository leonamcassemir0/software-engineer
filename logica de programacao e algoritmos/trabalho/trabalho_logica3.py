print("Bem vindos a Fábrica de Camisetas do Leonam Cassemiro")

# Definindo a função para escolher o modelo


def escolha_modelo():
    # Laço de repetição para escolhas que não encaixam nas opções
    while True:
        # Opções de escolha
        print("Escolha o modelo desejado:")
        print("MCS - Manga Curta Simples")
        print("MLS - Manga Longa Simples")
        print("MCE - Manga Curta Com Estampa")
        print("MLE - Manga Long Com Estampa")
        modelo = input(">> ")
        # Condicionais com o valor de cada modelo escolhido
        if modelo == "MCS":
            return 1.80
        elif modelo == "MLS":
            return 2.10
        elif modelo == "MCE":
            return 2.90
        elif modelo == "MLE":
            return 3.20
        else:
            # Retorna para as opções se digitar um valor diferente das opções
            print("Valor invalido! Digite uma entre as opcoes possiveis. \n")
            continue


# Escolha do número de camisetas


def num_camisetas():
    while True:
        camisetas = int(input("Digite o numero de camisetas: "))
        # Usando try/except para criar uma condição
        try:
            # Retorna o laço se escolher um número maior que 20000
            if camisetas > 20000:
                print("Numero excede ao permitido. Digite um valor valido! \n")
        except ():
            continue

        # Condicionais com os valores retornados conforme a escolha
        if 0 < camisetas < 20:
            return camisetas
        elif 20 <= camisetas < 200:
            return camisetas*(1-5/100)
        elif 200 <= camisetas < 2000:
            return camisetas*(1-7/100)
        elif 2000 <= camisetas <= 20000:
            return camisetas*(1-12/100)


# Função para escolha do frete


def frete():
    while True:
        print("Escolha o frete desejado")
        print("1 - Frete por Transportadora - R$ 100.00")
        print("2 - Frete por Sedex - R$ 200.00")
        print("0 - Retirar na fabrica - R$ 0.00")
        escolhaFrete = int(input(">> "))
        # Condicionais com os valores à retornar conforme escolha
        if escolhaFrete == 1:
            return 100
        elif escolhaFrete == 2:
            return 200
        elif escolhaFrete == 0:
            return 0
        else:
            # Volta o laço se escolher um valor diferente
            print("Valor invalido. Escolha um frete disponivel! \n")
            continue


modelo = escolha_modelo()
camisa = num_camisetas()
transporte = frete()
total = (modelo * camisa) + transporte

print(f"Total: R$ {total} (Modelo: {modelo} * Quantidade(com desconto): {camisa} + Frete: {transporte})")
