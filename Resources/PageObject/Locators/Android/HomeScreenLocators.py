#Dynamic xpath for get name and email
def get_user_name_xpath(name):
    return f'//android.widget.TextView[@text="{name}"]'

def get_user_email_xpath(email):
    return f'//android.widget.TextView[@text="{email}"]'

search_btn = "//android.widget.TextView[@text=\"Search Tasks\"]"
logout_btn = "//androidx.compose.ui.platform.ComposeView/android.view.View/android.view.View/android.view.View[2]/android.widget.Button"