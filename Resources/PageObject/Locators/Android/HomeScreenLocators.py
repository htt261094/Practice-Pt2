def get_user_name_xpath(name):
    return f'//android.widget.TextView[@text="{name}"]'

def get_user_email_xpath(email):
    return f'//android.widget.TextView[@text="{email}"]'

logout_btn = "//androidx.compose.ui.platform.ComposeView/android.view.View/android.view.View/android.view.View[2]/android.widget.Button"