*** Settings ***
Library           SeleniumLibrary
Library           RequestsLibrary
Library           Collections
Library           JSONLibrary
Library           OperatingSystem
Resource          ../../Locators/PageBuilder/TopbarMenu.robot
Resource          ../../Actions/Share/Computation.robot
Resource          ../../Actions/Common.robot

*** Keywords ***
Người dùng thấy được "Save As" Button trên thanh công cụ tại màn hình PageBuilder
    Element Should Be Visible    ${btn_Save_Template}

Người dùng thấy được nút "Save As" trên thanh công cụ tại màn hình "Page Builder"
    Element Should Be Visible    ${btn_Save_As_Template}

Người dùng bấm vào nút "Save As" trên thanh công cụ tại màn hình "Page Builder"
    Click To Element    ${btn_Save_As_Template}

Given Người dùng bấm vào nút "Save As" trên thanh công cụ tại màn hình "Page Builder"
    Gian hàng "Testautomykiot" đăng nhập thành công
    Người dùng truy cập màn hình "Page Builder"
    Người dùng bấm vào nút "Save As" trên thanh công cụ tại màn hình "Page Builder"

Giao diện "My Templates" được hiển thị dưới dạng Modal
    Element Should Be Visible    ${modal_my_template}

Người dùng bấm vào nút "Save" trên thanh công cụ "My Templates"
    Sendkey To Element  ${modal_my_template_name_inp}   A
    Sleep    3s
    Click To Element    ${modal_my_template_save}
    Sleep    5s

Giao diện "A" mới được lưu vào danh sách "My Templates"
    Element Should Be Visible    ${modal_save_success}

Danh sách giao diện trong "My Templates" đã có 3 giao diện được lưu
    ${count_element}  Get Element Count    ${list_template_items}
    Log ${count_element}
