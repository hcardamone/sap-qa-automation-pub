### SAP Logon Reosurce ###
## This is the Suite Setup resource, provides actions:
#  * Open SAP GUI applicaiton
*** Settings ***
Resource    sapgui.resource

*** Keywords ***

Login in SAP NetWeaver
    Open SAP NetWeaver application
    Wait Until Keyword Succeeds    10s    2s    Connect To Session
    Open Connection        ${SAP_ENV}
    Input Text             ${saplogon.usr}     ${USER_NAME}
    Input Password         ${saplogon.pwd}     ${PWD}
    Input Text             ${saplogon.lng}     ${LANGUAGE}  
    Send Vkey    Enter
    Dismiss Multiple Logon warning dialog if needed
    Set Explicit Wait    ${EXPLICIT_WAIT}