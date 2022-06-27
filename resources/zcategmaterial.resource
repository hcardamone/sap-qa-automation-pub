*** Keywords ***

Fill fields and adding category
    Click Element       ${sapmain.edtBtn}
    Click Element       ${sapmain.nwentrie}
    Input Text      ${sapedittableview.codct}      ${edittableview.codct}
    Input Text      ${sapedittableview.denom}      ${edittableview.denom}
    Send Vkey    11
    Log             Category ${edittableview.codct} and Denom ${edittableview.denom} was adding successfully