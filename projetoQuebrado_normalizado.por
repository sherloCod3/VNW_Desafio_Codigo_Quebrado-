//codigo normalizado
// Criado opor grupo 2
// Correção de Alexandre A. Cavalari

programa {

      cadeia login = "vaina"
      cadeia nomeItem
      cadeia senha = "web"
      inteiro qtdItem, quantidadeItens
      inteiro valorItem
      
      inteiro totalItens=1

      cadeia estoqueNome[15]
      inteiro estoqueQtd[20] 
      inteiro estoqueValor[18]  
      inteiro estoqueID[50]

    funcao inicio() {
       escreva("---- Sistema de Autenticação ----")
       escreva("\nDigite seu login: ")
       leia(login)
       escreva("Digite sua senha: ")
       leia(senha)

       se (login == "vaina" e senha == "web"){
       	escreva("Logado! \n")
       	menu()
       }senao{
       	escreva("Login ou Senha errado - Digite novamente!\n")
      	inicio()
      }
    }

    funcao menu() {
        inteiro op

        escreva("\n1. Adicionar item ao estoque.\n2. Remover item do estoque.\n3. Exibir estoque. \n4. Sair.\n")
        leia(op)

        escolha(op) {
            caso 1:
                adicionarEstoque()
                pare
            caso 2:
                removerEstoque()
                pare
            caso 3:
                exibirEstoque()
            pare
            caso 4:
            escreva("Saindo do programa!")
            sair()
                pare
            caso contrario:
                escreva("Opção inválida. Tente novamente\n")
        }
    }

  funcao adicionarEstoque() {
    escreva("Quantos itens adicionar? ")
    leia(quantidadeItens)
    se(quantidadeItens>20){
      escreva("A capacidade máxima do estoque está limitada a 20 unidades. Escolha uma nova quantidade de itens a adicionar.\n")
      adicionarEstoque()
    } senao{
      para(inteiro i = 0; i < quantidadeItens; i++){
      escreva("Nome:")
          leia(nomeItem)
    
          escreva("Quantidade: ")
          leia(qtdItem)
    
          escreva("Valor:")
          leia(valorItem)
    
          estoqueNome [totalItens] = nomeItem
          estoqueQtd  [totalItens] = qtdItem
          estoqueValor[totalItens] = valorItem
          estoqueID   [qtdItem]    = totalItens
          
          totalItens++
      }
    }   
      
    menu()

  }

  funcao removerEstoque() {
    inteiro removerItem

    escreva("\nQual item item você irá remover? \n")
    para (inteiro j = 1; j < totalItens; j++) {
      escreva(j, " - Produto: ", estoqueNome[j]," - ", "Quantidade: ", estoqueQtd[j] ," - ", "Preço: ", estoqueValor[j],"\n")    
    }
    leia(removerItem)

    se(removerItem > totalItens){
        escreva("\nProduto não encontrado\n")
        menu()
    } senao{
        para(inteiro i = removerItem; i < totalItens - 1; i++){
          estoqueNome[i] = estoqueNome[i + 1]
          estoqueQtd[i] = estoqueQtd[i + 1]
          estoqueValor[i] = estoqueValor[i + 1]
          estoqueID[i] = estoqueID[i + 1]
        }
    totalItens--
    menu()
    }
      
  }

  funcao exibirEstoque() {
    para (inteiro j = 1; j < totalItens; j++) {
     escreva(j, " - Produto: ", estoqueNome[j]," - ", "Quantidade: ", estoqueQtd[j] ," - ", "Preço: ", estoqueValor[j],"\n")    
    }
    menu()
  }

  funcao sair(){  

  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 80; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */