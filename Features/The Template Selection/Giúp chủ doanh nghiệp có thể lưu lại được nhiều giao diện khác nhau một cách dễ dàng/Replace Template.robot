*** Settings ***
Test Setup        Before Test
Test Teardown     After Test
Library           SeleniumLibrary
Library           RequestsLibrary
Library           Collections
Library           JSONLibrary
Library           OperatingSystem
Resource          ../../../Config/envi.robot
Resource          ../../../Actions/Common.robot
Resource          ../../../Actions/Share/utils.robot

*** Test cases ***
Kiểm tra thao tác "Replace Template" giao diện trong "My Templates"
    Given Người dùng chọn giao diện "A" trong các danh sách "My Templates"
    When Người dùng bấm vào nút "Save" trên thanh công cụ "My Templates"
    Then Giao diện "B" lưu đè lên giao diện "A" thành công

Kiểm tra thao tác "Replace Template" lên giao diện "Đang phát hành" trong "My Templates"
    Given Người dùng chọn giao diện "A" là giao diện "Đang phát hành" trong "My Templates"
    When Người dùng bấm vào nút "Save" trên thanh công cụ trong "My Templates"
    Then Hiển thị thông báo "Bạn không thể lưu đè lên giao diện "Đang phát hành""
