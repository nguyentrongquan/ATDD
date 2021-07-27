*** Variables ***
${btn_Save_Template}      //*[@id="theme-save-btn"]
${btn_Save_As_Template}      //*[@id="theme-save-as-btn"]
${btn_publish}      //*[@id="theme-publish-btn"]
${btn_toggle_template}  //*[@id="template-btn"]
${modal_my_template}    //*[@id="modal-my-template"]
${modal_my_template_save}   //*[@id="modal-my-template"]//button[contains(concat(" ",normalize-space(@class)," ")," mk-btn ")][contains(concat(" ",normalize-space(@class)," ")," mk-btn-primary ")][contains(concat(" ",normalize-space(@class)," ")," ml8 ")]
${modal_my_template_name_inp}   //*[@id="template-name"]
${modal_save_success}   //*[@id="modal-save-success"]

# trả về 1 danh sách các template items
${list_template_items}    //div[@id='modal-my-template___BV_modal_content_']//div[@class='mk-template-item']
