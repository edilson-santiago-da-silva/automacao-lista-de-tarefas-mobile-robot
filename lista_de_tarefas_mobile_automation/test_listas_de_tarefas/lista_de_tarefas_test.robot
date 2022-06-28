*** Settings ***
Documentation   Essa suíte testa o app de lista de tarefas
Resource        lista_de_tarefas_resources.robot 


*** Test Cases ***
Caso de Teste 01 - Abrir aplicativo
    [Documentation]    Esse teste abre o aplicativo de lista de tarefas
    [Tags]             Abrir_app
    Abrir o aplicativo  

Caso de Teste 02 - Criando a primeira tarefa
    [Documentation]    Esse teste cria a primeira tarefa
    [Tags]             tarefa1
    Dado que estou na tela inicial do app  
    Quando clicar no botao de adicionar a 1º tarefa "PRATICAR INGLÊS"
    E Definir data  
    Então mostre a tarefa finalizada

Caso de Teste 02 - Criando a segunda tarefa
    [Documentation]    Esse teste cria a segunda tarefa
    [Tags]             tarefa2
    Dado que estou na tela inicial do app  
    Quando clicar no botao de adicionar a 2º tarefa "PLANEJAR A PRÓXIMA SEMANA" 
    E Definir data 
    Então mostre a tarefa finalizada

Caso de Teste 03 - Criando a terceira tarefa
    [Documentation]    Esse teste cria a terceira tarefa
    [Tags]             tarefa3
    Dado que estou na tela inicial do app  
    Quando clicar no botao de adicionar a 3º tarefa "TESTES FUNCIONAIS"  
    E Definir data 
    Então mostre a tarefa finalizada

Caso de Teste 04 - Criando a quarta tarefa
    [Documentation]    Esse teste cria a quarta tarefa
    [Tags]             tarefa4
    Dado que estou na tela inicial do app  
    Quando clicar no botao de adicionar a 4º tarefa "ESTRATÉGIAS DE TESTES"   
    E Definir data 
    Então mostre a tarefa finalizada

Caso de Teste 05 - Criando a quinta tarefa
    [Documentation]    Esse teste cria a quarta tarefa
    [Tags]             tarefa5
    Dado que estou na tela inicial do app  
    Quando clicar no botao de adicionar a 5º tarefa "TAREFA A SER EXCLUÍDA"    
    E Definir data 
    Então mostre a tarefa finalizada
    E Então exclua a tarefa 