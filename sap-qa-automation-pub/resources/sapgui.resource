
### SAP Gui Resource resource ###
## This resource provide actions:
#   * Open/Close SAP Gui application.

*** Settings ***
Library         ./customlib/SapGuiLibraryExtended.py  screenshot_directory=${OUTPUTDIR}
Library         AutoItLibrary
Library         String
Library         Process
Library         Collections
Variables       ./robot-variables/robot-variables-transactions.yaml
Variables       ./ui-elements/sd-elements.yaml
Variables       ./input-data/input-data-zcategmaterial.yaml
Variables       ./input-data/input-data-zcadastromat.yaml
Variables       ./environments.yaml

*** Variables ***
${SAPGUIPROCESSID}

*** Keywords ***
####                                      ####
####  Open SAP NetWeaver AS ABAP 7.52 SP04 Resources  ####
####                                      ####
# KW to Open SAP NetWeaver application
Open SAP NetWeaver application
    ${SAPGUIPROCESSID}    Run   ${PATH_TO_SAPLOGON}
    Set Global Variable    ${SAPGUIPROCESSID}
    Sleep    3s    reason=Waiting the splash screen to disappear
    Wait For Active Window    ${saplogon.windowtitle}${SAPGUI_VERSION}     TimeOut=15

# KW to close SAP Gui application
Close SAP NetWeaver
    Process Close    ${SAPGUIPROCESSID}


# KW to actions about multiple logon warning
Dismiss Multiple Logon warning dialog if needed
    ${is_popupdisplayed}    Run Keyword And Return Status    Element Should Be Present    ${saplogon.multipleLogonWarning_dlg}
    ${dialogTitle}      Run Keyword If      '${is_popupdisplayed}' == '${TRUE}'    Run Keyword
    ...                 Get Window Title    ${saplogon.multipleLogonWarning_dlg}
    Run Keyword If    '${dialogTitle}' == '${saplogon.multipleLogonTitle_dlg}'    Run Keywords
    ...                Select Radio Button    ${saplogon.${MULTIPLE_LOGON_ACTION}}   AND
    ...                Click Element    ${sapmain.confirmPopup_btn}
    ...                ELSE    Return From Keyword


Open "Categoria Material" Program
    Run Transaction     ${zsaptransactions.zedicatgtmat}


Open "Cadastro de Material" Program
    Run Transaction     ${zsaptransactions.zcadastromat}


Exit case test
    Run Exit Transaction    ${standard.exittrans}
