*** Settings ***
Library SSHLibrary

*** Test Cases ***
SSH Login
    Open Connection  46.101.195.218
    ${output}  Login  studentwsb  lubieStudia@#
    Should Contain  ${output}  Welcome to Ubuntu 16.04.2
    ${output}  Execute Command  ls
    Get File  sprawdz_ten_plik  plik.txt
