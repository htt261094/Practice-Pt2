filter_btn = "//XCUIElementTypeButton[@name=\"Search & Filters\"]"

logout_btn = "accessibility_id=Logout"

def get_welcome_text_path(actual_username):
    return f'accessibility_id=Welcome, {actual_username}!'

def get_name_path(actual_name):
    return f'accessibility_id={actual_name}'

def get_email_path(actual_email):
    return f'accessibility_id={actual_email}'
