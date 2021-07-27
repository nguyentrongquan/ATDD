*** Settings ***
Library           SeleniumLibrary
Library           RequestsLibrary
Library           Collections
Library           JSONLibrary
Library           OperatingSystem
Resource          ../Locators/CMS.robot
Resource          ../Actions/Share/Computation.robot
Resource          ../Config/envi.robot

*** Keywords ***
Gian hàng "Testautomykiot" đăng nhập thành công
    Open Browser    ${access_url}    gc
    Maximize Browser Window

Người dùng truy cập màn hình "Page Builder"
    Click To Element    ${btn_tuybienhinhthuc}
    
