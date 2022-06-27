*** Settings ***
Documentation       SAP GUI Tests - this resource provides some tests, this is a POC project.
...                 This resource provides actions:
...                  - Create a Sales Order by Sovos QA Automation Scenarios Program resource.
...                  - run this resource to test the automation. Obs: check the reame.md # Running a Test Suite session, step 3.

Resource            ../../../../resources/generaltabledisplay.resource
Resource            ../../../../resources/sapgui.resource
Resource            ../../../../resources/saplogon.resource
Resource            ../../../../resources/zcategmaterial.resource    
Resource            ../../../../resources/zcadastromat.resource
Suite Setup         Login in SAP NetWeaver
Force Tags          sapguitests    outbound
Test Teardown       Run Keyword If Test Failed    Take Screenshot
Suite Teardown      Close SAP NetWeaver

*** Test Cases ***

SAP GUI NetWeaver Automation - Create Category Material and Register Material Z Programs
    [Documentation]   Test case - Create
    ...               create_input_data
    Open "Categoria Material" Program
    Fill fields and adding category
    Open "Cadastro de Material" Program
    Fill fields and save

SAP GUI NetWeaver Automation - Create Category Material and Register Material Z Programs
    [Documentation]   Test case - Create Random Code
    ...               create_input_random_code
    Open "Categoria Material" Program
    Fill fields and adding category with random_code
    Open "Cadastro de Material" Program
    Fill fields and save with random_code