*** Settings ***
Library    Collections
*** Variables ***
${BROWSER_NAME}     chrome
${MOBILE_NUM}      898989898
@{COLORS}   red     green    yellow
&{MY_DETAILS}       name=bala   role=trainer    mobile=87877887

*** Test Cases ***
TC9
    Log To Console    ${MY_DETAILS}[mobile]

TC10
    &{emp_dic}      Create Dictionary      emp_id=101       emp_name=jack       role=qa
    Log To Console    ${emp_dic}[emp_id]
    Log Dictionary    ${emp_dic}
    


TC1
    ${my_name}      Set Variable    Balaji
    Log To Console    ${my_name}
    Log To Console    ${BROWSER_NAME}

TC2
    Log To Console    ${BROWSER_NAME}
    Log To Console    ${MOBILE_NUM}
    Log To Console    ${COLORS}
    
TC3
    Log To Console    ${COLORS}[2]
    Log To Console    ${COLORS}
    

TC4
   ${item_count}  Get Length    ${COLORS}
   Log To Console    ${item_count}

TC5
   @{fruits}      Create List     orange      mango   apple
   Log To Console    ${fruits}[1]
   #append grapes
   Append To List   ${fruits}   grapes
   Remove Values From List    ${fruits}     apple
   #insert  pineapple at index 1
   Insert Into List    ${fruits}    1    pineapple
   ${len}   Get Length    ${fruits}
   Log To Console    ${len}
   Log    ${fruits}

TC6
    FOR    ${i}    IN RANGE    1    11
       Log To Console    ${i}
    END

TC7
    @{fruits}      Create List     orange   mango   apple    pineapple     kiwi
    #print each item using for loop
    ${count}    Get Length    ${fruits}
    Log To Console    ${count}

    FOR    ${a}    IN RANGE    0  ${count}
        Log To Console    ${fruits}[${a}]
    END

TC8
    @{fruits}      Create List     orange   mango   apple    pineapple     kiwi
    
    FOR    ${fruit}    IN    @{fruits}
        Log To Console    ${fruit}
    END





