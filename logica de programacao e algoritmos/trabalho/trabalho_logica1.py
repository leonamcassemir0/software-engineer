print("Bem-vindos a loja do Leonam Cassemiro")
# Pedindo o valor do produto
valorPedido = float(input("Qual o valor do pedido? "))
# Pedindo a quantidade de parcelas
quantidadeParcelas = int(input("Qual a quantidade de parcelas? "))

# Fazendo as condições conforme o número de parcelas
if 0 < quantidadeParcelas < 4:
    print(f"O valor total é R$ {valorPedido}")
elif 4 <= quantidadeParcelas < 6:
    # Cálculo do valor de cada parcela (já com os juros)
    valorParcela = valorPedido*(1+4/100) / quantidadeParcelas
    print(f"O valor de cada parcela é R$ {round(valorParcela, 2)}")
    # Cálculo do valor total com juros
    valorTotalParcelado = valorParcela*quantidadeParcelas
    print(f"O valor total e de R$ {valorTotalParcelado}")
elif 6 <= quantidadeParcelas < 9:
    # Cálculo do valor de cada parcela (já com os juros)
    valorParcela = valorPedido*(1+8/100) / quantidadeParcelas
    print(f"O valor de cada parcela é R$ {round(valorParcela, 2)}")
    # Cálculo do valor total com juros
    valorTotalParcelado = valorParcela*quantidadeParcelas
    print(f"O valor total e de R$ {valorTotalParcelado}")
elif 9 <= quantidadeParcelas < 13:
    # Cálculo do valor de cada parcela (já com os juros)
    valorParcela = valorPedido*(1+16/100) / quantidadeParcelas
    print(f"O valor de cada parcela é R$ {round(valorParcela, 2)}")
    # Cálculo do valor total com juros
    valorTotalParcelado = valorParcela*quantidadeParcelas
    print(f"O valor total e de R$ {valorTotalParcelado}")
else:
    # Cálculo do valor de cada parcela (já com os juros)
    valorParcela = valorPedido*(1+32/100) / quantidadeParcelas
    print(f"O valor de cada parcela é R$ {round(valorParcela, 2)}")
    # Cálculo do valor total com juros
    valorTotalParcelado = valorParcela*quantidadeParcelas
    print(f"O valor total e de R$ {valorTotalParcelado}")
