*** Settings ***
# Documentatio e Test Setup são Keywords
Documentation   Essa suíte testa o site da Amazon.com.br
Resource        amazon_resources.robot  
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

# Sequiser fazer algo antes da Suíte inteira, basta mudar a Keyword de Test para Suíte
# Suite Setup        instrução
# Suite Teardown     instrução
 
*** Test Cases ***
# Cada caso fica sem espaço, colado na Margem
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    # Documentatio e Tags são Keywords
    [Documentation]    Esse teste verifica o menu Eletrônicos do site da Amazon e 
    ...                verifica e verifica a categoria Computadores e Intformática
    [Tags]             menus  categorias
    # Cada linha em azul, é um passo do nosso teste.
    # Precisam estar identados para que o Robot entenda que são sub passo de cada caso.
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se aparece a categoria "Computadores e Intformática"

Caso de Teste 02 - Pesdsquisa de Produto
    [Documentation]  Esse teste verifica a busca de um produto
    [Tags]           busca_produtos  lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificdar o resultado da pesquisa se está listando o produto pesquisado

 

 

 

 
