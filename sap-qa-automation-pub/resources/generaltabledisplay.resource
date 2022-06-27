*** Keywords ***

Open Program
  Log   VAMOS VAMOS VAMOS

Fill fields and execute
  ${today}    Get Current Date    result_format=%d.%m.%Y
  Input Text    ${saptable.searchtable}   ${sovosmx.tbmidoc}
  Send Vkey     Enter
  Input Text    ${saptable.searchfield}    ${cocdmx.mxndfa}
  Input Text    ${saptable.dtlw}           ${today}
  Input Text    ${saptable.dtht}           ${today}
  Send Vkey     F8