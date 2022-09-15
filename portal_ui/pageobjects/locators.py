# Credential Modal elements
# xpath for closing modal

#click_close = "xpath://button[@aria-label='Close']//" \
              ##"*[name()='svg']//*[name()='path' " \
              #"and contains(@fill-rule,'evenodd')]"
click_closebutton = "//*[@id='modal-download-target']/div[2]/div/div[1]/button"
txt_loginEmail = "xpath://input[@id='bink-form-field-credentials-email']"
txt_loginPassword = "xpath://input[@id='bink-form-field-credentials-password']"
btn_verifycredential = "//div[normalize-space()='Verify Credentials']"
button_credentials = "//body/div[@id='__next']/div[1]/div[2]/main[1]/div[1]/button[1]"

# Labels for Environments

label_Development ="xpath://p[normalize-space()='Development']"
label_Staging ="xpath://p[contains(text(),'Staging')]"
label_Sandbox ="xpath://p[contains(text(),'Sandbox')]"
label_Production ="xpath://p[contains(text(),'Production')]"

label_Unverified ="xpath://body/div[@id='__next']/div[1]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/p[1]"

label_Dev_Failed ="xpath://*[@id='modal-download-target']/div[2]/div/div[2]/div/div[1]/div[2]/div/p"
label_Staging_Failed ="xpath://*[@id='modal-download-target']/div[2]/div/div[2]/div/div[2]/div[2]/div/p"
label_Production_Failed ="xpath://*[@id='modal-download-target']/div[2]/div/div[2]/div/div[4]/div[2]/div/p "

label_Dev_Verified ="//*[@id='modal-download-target']/div[2]/div/div[2]/div/div[1]/div[2]/div[1]/p"
label_Staging_Verified ="//*[@id='modal-download-target']/div[2]/div/div[2]/div/div[2]/div[2]/div[1]/p"
label_Production_Verified ="//*[@id='modal-download-target']/div[2]/div/div[2]/div/div[4]/div[2]/div[1]/p"