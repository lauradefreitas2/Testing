*** Variables ***
${SITE}             https://www.saucedemo.com
${NAVEGADOR}            Chrome               
${CAMPO_USUARIO}        id=user-name
${USUARIO}              standard_user
${CAMPO_PASSWORD}       id=password
${PASSWORD}             secret_sauce
${BOTAO_LOGIN}          id=login-button
*** Keywords ***
Abrir o site da loja Sauce demo
  Open Browser    ${SITE}     ${NAVEGADOR}
  Maximize Browser Window

Fazer Login
  Input Text         ${CAMPO_USUARIO}   ${USUARIO}
  input Text         ${CAMPO_PASSWORD}  ${PASSWORD}
  Click Element      ${BOTAO_LOGIN}
  Page Should Contain  Products 
