*** Settings ***

Library        AppiumLibrary

*** Variables ***

${BOTAO_ADICIONAR_TAREFA}    id=com.splendapps.splendo:id/fabAddTask
${BOTAO_CONCLUIR_TAREFA}     


*** Keywords ***
Abrir o aplicativo
    Open Application    http://localhost:4723/wd/hub 
...     platformName=Android   
...     deviceName=emulator-5554
...     appPackage=com.splendapps.splendo
...     appActivity=com.splendapps.splendo.MainActivity
...     automationName=Uiautomator2

Dado que estou na tela inicial do app
    Wait Until Element Is Visible    ${BOTAO_ADICIONAR_TAREFA}
     
Quando clicar no botao de adicionar a 1º tarefa "${TAREFA1}"
    Click Element    ${BOTAO_ADICIONAR_TAREFA}
    Wait Until Element Is Visible    id=com.splendapps.splendo:id/edtTaskName
    Input Text       id=com.splendapps.splendo:id/edtTaskName     text=${TAREFA1} 
    

E Definir data
    Wait Until Element Is Visible    id=com.splendapps.splendo:id/btnSetD
    Click Element                       id=com.splendapps.splendo:id/btnSetD
    Wait Until Element Is Visible    id=android:id/button1
    Click Element                       locator=//android.view.View[@index="15"]
    Click Element                       id=android:id/button1
     
Então mostre a tarefa finalizada
    Wait Until Element Is Visible    id=com.splendapps.splendo:id/fabSaveTask
    Click Element    id=com.splendapps.splendo:id/fabSaveTask

#----------------------------------------------------------------------------------------
#Implementações caso de teste 02
Quando clicar no botao de adicionar a 2º tarefa "${TAREFA2}"
    Wait Until Element Is Visible  ${BOTAO_ADICIONAR_TAREFA}
    Click Element                     ${BOTAO_ADICIONAR_TAREFA}
    Wait Until Element Is Visible  locator=//android.widget.EditText[@index="0"]     
    Input Text                        locator=//android.widget.EditText[@index="0"]     text=${TAREFA2} 
#----------------------------------------------------------------------------------------
#Implementações caso de teste 03
Quando clicar no botao de adicionar a 3º tarefa "${TAREFA3}"
    Wait Until Element Is Visible     ${BOTAO_ADICIONAR_TAREFA}
    Click Element                     ${BOTAO_ADICIONAR_TAREFA}
    Wait Until Element Is Visible     locator=//android.widget.EditText[@index="0"]     
    Input Text                        locator=//android.widget.EditText[@index="0"]     text=${TAREFA3} 
#----------------------------------------------------------------------------------------
#Implementações caso de teste 04
Quando clicar no botao de adicionar a 4º tarefa "${TAREFA4}" 
    Wait Until Element Is Visible    ${BOTAO_ADICIONAR_TAREFA}
    Click Element                     ${BOTAO_ADICIONAR_TAREFA}
    Wait Until Element Is Visible     locator=//android.widget.EditText[@index="0"]     
    Input Text                        locator=//android.widget.EditText[@index="0"]     text=${TAREFA4}

#----------------------------------------------------------------------------------------
#Implementações caso de teste 05
Quando clicar no botao de adicionar a 5º tarefa "${TAREFA5}" 
    Wait Until Element Is Visible     ${BOTAO_ADICIONAR_TAREFA}
    Click Element                     ${BOTAO_ADICIONAR_TAREFA}
    Wait Until Element Is Visible     locator=//android.widget.EditText[@index="0"]     
    Input Text                        locator=//android.widget.EditText[@index="0"]     text=${TAREFA5}

E Então exclua a tarefa
    Wait Until Element Is Visible    locator=//android.widget.TextView[@text="TAREFA A SER EXCLUÍDA"]
    Click Element                    locator=//android.widget.TextView[@text="TAREFA A SER EXCLUÍDA"]
    Wait Until Element Is Visible    id=com.splendapps.splendo:id/action_delete_task
    Click Element                    id=com.splendapps.splendo:id/action_delete_task 
    Wait Until Element Is Visible    id=android:id/button1
    Click Element                    id=android:id/button1 