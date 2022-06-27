*** Keywords ***

Fill fields and save
    Click Element           ${sapmain.nwentrie}
    Input Text              ${sapzcdtrmat.matnr}    ${cdstromatview.matrl}
    Input Text              ${sapzcdtrmat.denom}    ${cdstromatview.denon}
    Input Text              ${sapzcdtrmat.codct}    ${cdstromatview.ctmat}
    Send Key Property       ${sapzcdtrmat.orige}    ${cdstromatview.ogmat}
    Input Text              ${sapzcdtrmat.valor}    ${cdstromatview.vlmat}
    Input Text              ${sapzcdtrmat.moeda}    ${cdstromatview.moeda}
    Send Vkey    Enter
    Send Vkey    11
    Log             Material ${cdstromatview.denon} ${cdstromatview.matrl}was adding successfully