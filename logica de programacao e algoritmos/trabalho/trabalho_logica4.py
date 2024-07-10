# Variavel do id_global(RU do aluno)
id_global = 4672144
# Lista onde serão cadastrados os funcionários
lista_funcionarios = []
print("Bem vindos a empresa do Leonam Cassemiro \n")

# Função para cadastrar novos funcionários


def cadastrar_funcionario(id):
    print(50*"-")
    print("            Menu Cadastrar Funcionario            ")
    print(50*"-")
    print(f"id do Funcionario: {id}")
    nome = input("Digite o nome: ")
    setor = input("Digite o setor: ")
    salario = float(input("Digite o salario: "))
    funcionario = {'id': id,
                   'nome': nome,
                   'setor': setor,
                   'salario': salario}
    # Adicionar o dicionário à lista
    lista_funcionarios.append(funcionario.copy())
    print("Funcionario cadastrado com sucesso!")
    print(50*"-")


# Função para consultar funcionários na lista


def consultar_funcionario():
    while True:
        print(50*"-")
        print("            Menu Consultar Funcionario            ")
        print(50*"-")
        print("1 - Consultar todos")
        print("2 - Consultar por Id")
        print("3 - consultar por Setor")
        print("4 - Retornar")
        opcao = int(input(">> "))
        # Condicionais para a escolha do usuário
        if opcao == 1:
            if lista_funcionarios == []:
                print("Lista vazia! Adicione funcionarios \n")
                break
            else:
                # Percorre toda a lista e printa eles na tela
                for i in lista_funcionarios:
                    print(50*'-')
                    print('')
                    print('ID:', i['id'])
                    print('Nome:', i['nome'])
                    print('Setor:', i['setor'])
                    print('Salario:', i['salario'])
                    print('')
        elif opcao == 2:
            consulta_id = int(input("Digite o id a ser consultado: "))
            for f in lista_funcionarios:
                # Valida o index onde está o dicionário escolhido
                if f['id'] == consulta_id:
                    print(50*'-')
                    print('')
                    print('ID:', f['id'])
                    print('Nome:', f['nome'])
                    print('Setor:', f['setor'])
                    print('Salario:', f['salario'])
                    print('')
        elif opcao == 3:
            consulta_setor = input("Digite o setor: ")
            for func in lista_funcionarios:
                # Valida a partir do setor selecionado
                if func['setor'] == consulta_setor:
                    print(50*'-')
                    print('')
                    print('ID:', func['id'])
                    print('Nome:', func['nome'])
                    print('Setor:', func['setor'])
                    print('Salario:', func['salario'])
                    print('')
        elif opcao == 4:
            break
        else:
            # Volta o laço se digitar uma opcao diferente
            print("Opcao invalida! Digite novamente")
            continue


def remover_funcionario():
    # Validação para o laço de repetição
    valida = False
    while valida == False:
        remove_func = int(input('Digite o id a ser removido: '))
        print('')
        if lista_funcionarios == []:
            print('Nenhum funcionario encontrado! Adicione um.')
            valida = True
        else:
            for funcionario in lista_funcionarios:
                if funcionario['id'] == remove_func:
                    print('')
                    # Mostra os dados para confirmação da remoção
                    print("Usuario a ser removido:")
                    print('ID:', funcionario['id'])
                    print('Nome:', funcionario['nome'])
                    print('Setor:', funcionario['setor'])
                    print('Salario:', funcionario['salario'])
                    print('')
                    opcao = input("Deseja remover este funcionario?(S/N) ")
                    # Condicionais a partir da resposta do usuário
                    if opcao == 'S':
                        lista_funcionarios.remove(funcionario)
                        print("Usuario removido com sucesso!")
                        valida = True
                    elif opcao == 'N':
                        print("Operacao cancelada!")
                        valida = True


# Menu principal do programa
while True:
    print('')
    print(50*"-")
    print("                  Menu Principal                  ")
    print(50*"-")
    print("1 - Cadastrar Funcionario")
    print("2 - Consultar Funcionario")
    print("3 - Remover Funcionario")
    print("4 - Sair")
    opcao = int(input(">> "))

    # Condições a partir da escolha, chamando as funções respectivas
    if opcao == 1:
        cadastrar_funcionario(id_global)
        id_global += 1
    elif opcao == 2:
        consultar_funcionario()
    elif opcao == 3:
        remover_funcionario()
    elif opcao == 4:
        break
    else:
        continue
