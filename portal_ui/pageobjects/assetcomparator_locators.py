"""
This page  contains the locators for Asset Comparator Page
"""

btn_close = "xpath://button[@aria-label='Close']"
txt_loginEmail = "xpath://input[@id='bink-form-field-credentials-email']"
txt_loginPassword = "xpath://input[@id='bink-form-field-credentials-password']"
btn_verify_credential = "xpath://div[normalize-space()='Verify Credentials']"
btn_credentials = "//body/div[@id='__next']/div[1]/div[2]/main[1]/div[1]/button[1]"

# xpath for different environments
label_dev = "xpath://p[contains(text(),'Development')]"
label_staging = "xpath://p[contains(text(),'Staging')]"
label_production = "xpath://p[contains(text(),'Production')]"

label_dev_unverified = "xpath://p[contains(text(),'Development')]/../../div[2]/div/p[contains(text(),Unverified)]"
label_staging_unverified = "xpath://p[contains(text(),'Staging')]/../../div[2]/div/p[contains(text(),Unverified)]"
label_production_unverified = "xpath://p[contains(text(),'Production')]/../../div[2]/div/p[contains(text(),Unverified)]"

label_dev_failed = "xpath://p[contains(text(),'Development')]/../../div[2]/div/p[contains(text(),Failed)]"
label_staging_failed = "xpath://p[contains(text(),'Staging')]/../../div[2]/div/p[contains(text(),Failed)]"
label_production_failed = "xpath://p[contains(text(),'Production')]/../../div[2]/div/p[contains(text(),Failed)]"

label_dev_verified = "xpath://p[contains(text(),'Development')]/../../div[2]/div/p[contains(text(),Verified)]"
label_staging_verified = "xpath://p[contains(text(),'Staging')]/../../div[2]/div/p[contains(text(),Verified)]"
label_production_verified = "xpath://p[contains(text(),'Production')]/../../div[2]/div/p[contains(text(),Verified)]"

# xpath for delete credentials
btn_dev_delete = "xpath://p[contains(text(),'Development')]/../../div/div[2]/button"
btn_staging_delete = "xpath://p[contains(text(),'Staging')]/../../div/div[2]/button"
btn_production_delete = "xpath://p[contains(text(),'Production')]/../../div/div[2]/button"
