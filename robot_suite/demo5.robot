*** Settings ***
Library    OperatingSystem
Library    Collections
Library    String


*** Comments ***
Write code to list all file names in below directory
C:\Users\JiDi\AppData\Local\Temp


*** Test Cases ***
TC1
   ${files}  List Files In Directory     path=C:${/}
#   Log To Console    ${files}
#   Log List     ${files}
   
   Log To Console    ${files}[0]

TC2
    Remove File    path=C:${/}Mine${/}demo.txt
    File Should Not Exist    path=C:${/}Mine${/}demo.txt

TC3
    File Should Exist    path=C:${/}Mine${/}Company${/}LT7${/}Chat.txt
    
    
TC4
    ${name}     Set Variable    robot framework session
    Log To Console    ${name}
    #convert to uppercase and print
    ${u_name}    Convert To Upper Case   ${name} 
    Log To Console    ${u_name}
    ${final_str}     Remove String    ${u_name}      SESSION
    Log To Console    ${final_str}

TC5
    ${num1}     Set Variable        $200,100
    ${num2}     Set Variable        $200
    #write logic to add num1 and num2 then print it
    ${num1}     Remove String    ${num1}    $     ,
    Log To Console    ${num1}
    ${num2}    Remove String    ${num2}     $
    Log To Console    ${num2}

    ${num1}     Convert To Number    ${num1}
    ${result}    Evaluate    ${num1}+${num2}
    Log To Console    ${result}