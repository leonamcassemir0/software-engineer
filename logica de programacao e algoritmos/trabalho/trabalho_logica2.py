# Apresentação
print("Bem vindos a loja de Marmitas do Leonam Cassemiro")
# Apresentação do menu ao cliente
print(53*"-")
print(23*"-", "MENU", 24*"-")
print(53*"-")
# Tabela com sabores e tamanhos
print("| TAMANHO | BIFE ACEBOLADO(BA) | FILE DE FRANGO(FF) |")
print(53*"-")
print("|    P    |      R$ 16.00      |      R$ 15.00      |")
print("|    M    |      R$ 18.00      |      R$ 17.00      |")
print("|    G    |      R$ 22.00      |      R$ 21.00      |")

# Criação do acumulador para o valor total do pedido
acumulador = 0

while True:
    # Pedindo para o cliente escolher o sabor
    pedidoSabor = input("Qual o sabor escolhido?(BA/FF) ")
    # Criando as condições a partir da escolha do sabor
    if pedidoSabor == "BA":
        # Pedindo para escolher o tamanho
        pedidotamanho = input("Qual o tamanho?(P/M/G) ")
        # Criando as condições a partir da escolha do tamanho
        if pedidotamanho == "P":
            acumulador += 16
            # Apresentação do pedido com o valor
            print(f"Voce pediu um bife acebolado no tamanho {pedidotamanho}: R$ 16.00")
        elif pedidotamanho == "M":
            acumulador += 18
            print(f"Voce pediu um bife acebolado no tamanho {pedidotamanho}: R$ 18.00")
        elif pedidotamanho == "G":
            acumulador += 22
            print(f"Voce pediu um bife acebolado no tamanho {pedidotamanho}: R$ 22.00")
        else:
            print("Tamanho invalido! Tente novamente.")
            continue
    elif pedidoSabor == "FF":
        pedidotamanho = input("Qual o tamanho?(P/M/G) ")
        if pedidotamanho == "P":
            acumulador += 15
            print(f"Voce pediu um file de frango no tamanho {pedidotamanho}: R$ 15.00")
        elif pedidotamanho == "M":
            acumulador += 17
            print(f"Voce pediu um file de frango no tamanho {pedidotamanho}: R$ 17.00")
        elif pedidotamanho == "G":
            acumulador += 21
            print(f"Voce pediu um file de frango no tamanho {pedidotamanho}: R$ 21.00")
        else:
            print("Tamanho invalido! Tente novamente.")
            continue
    else:
        print("Sabor invalido! Tente novamente.")
        continue

    # Criando a escolha do novo pedido
    escolha = input("Deseja fazer outro pedido?(S/N) ")
    if escolha == "S":
        continue
    elif escolha == "N":
        break
    else:
        print("Valor inválido! Tente novamente.")
        escolha = input("Deseja fazer outro pedido?(S/N) ")

# Apresentação do valor total
print(f"Valor total a ser pago: R$ {acumulador}")
