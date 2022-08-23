# Credential Modal elements
# xpath for closing modal

#click_close = "xpath://button[@aria-label='Close']//" \
              ##"*[name()='svg']//*[name()='path' " \
              #"and contains(@fill-rule,'evenodd')]"
click_closebutton = "xpath://body/div[@id='__next']/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/button[1]/*[1]"
txt_loginEmail = "xpath://input[@id='bink-form-field-credentials-email']"
txt_loginPassword = "xpath://input[@id='bink-form-field-credentials-password']"
btn_credential = "//div[normalize-space()='Verify Credentials']"
button_credentials = "//body/div[@id='__next']/div[1]/div[2]/main[1]/div[1]/button[1]"

# Labels for Environments

label_Development ="xpath://p[normalize-space()='Development']"
label_Staging ="xpath://p[contains(text(),'Staging')]"
label_Sandbox ="xpath://p[contains(text(),'Sandbox')]"
label_Production ="xpath://p[contains(text(),'Production')]"
label_Unverfied ="xpath://body/div[@id='__next']/div[1]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/p[1]"