# Credential Modal elements
# xpath for closing modal

btn_close = "xpath://button[@aria-label='Close']//" \
              "*[name()='svg']//*[name()='path' " \
              "and contains(@fill-rule,'evenodd')]"
txt_loginEmail = "xpath://input[@id='bink-form-field-credentials-email']"
txt_loginPassword = "xpath://input[@id='bink-form-field-credentials-password']"
btn_verify_credential = "xpath://div[normalize-space()='Verify Credentials']"
btn_credentials = "//body/div[@id='__next']/div[1]/div[2]/main[1]/div[1]/button[1]"

# xpath for different environments
label_dev = "xpath://p[normalize-space()='Development']"
label_staging = "xpath://p[contains(text(),'Staging')]"
label_production = "xpath://p[contains(text(),'Production')]"
label_sandbox = "xpath://p[contains(text(),'Sandbox')]"

label_dev_unverified = "xpath://*[@id='modal-download-target']/div[2]/div/div[2]/div/div[1]/div[2]/div/p"
label_staging_unverified = "xpath://*[@id='modal-download-target']/div[2]/div/div[2]/div/div[2]/div[2]/div/p"
label_production_unverified = "//*[@id='modal-download-target']/div[2]/div/div[2]/div/div[4]/div[2]/div/p"

label_dev_failed = "xpath://*[@id='modal-download-target']/div[2]/div/div[2]/div/div[1]/div[2]/div/p"
label_staging_failed = "xpath://*[@id='modal-download-target']/div[2]/div/div[2]/div/div[2]/div[2]/div/p"
label_production_failed = "xpath://*[@id='modal-download-target']/div[2]/div/div[2]/div/div[4]/div[2]/div/p"

label_dev_verified = "xpath://*[@id='modal-download-target']/div[2]/div/div[2]/div/div[1]/div[2]/div[1]/p"
label_staging_verified = "xpath://*[@id='modal-download-target']/div[2]/div/div[2]/div/div[2]/div[2]/div[1]/p"
label_production_verified = "xpath://*[@id='modal-download-target']/div[2]/div/div[2]/div/div[4]/div[2]/div[1]/p"
