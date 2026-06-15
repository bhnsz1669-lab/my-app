import requests
import json

# Pushbullet API configuration
# -------------------------------------------------------------------------
PUSHBULLET_TOKEN = "O.JfeuDM6fSK8Mp4odC2XV4gRQrw3C5DIj"
API_URL = "https://api.pushbullet.com/v2/pushes"

def send_pushbullet_notification(title, body):
    """
    Sends a push notification via Pushbullet.
    """
    headers = {
        "Access-Token": PUSHBULLET_TOKEN,
        "Content-Type": "application/json"
    }
    
    data = {
        "type": "note",
        "title": title,
        "body": body
    }
    
    try:
        response = requests.post(API_URL, data=json.dumps(data), headers=headers)
        if response.status_code == 200:
            print("Notification sent successfully.")
        else:
            print(f"Failed to send notification. Status code: {response.status_code}")
    except Exception as e:
        print(f"An error occurred: {e}")

# نمونه اجرای برنامه برای تست توکن جدید:
# send_pushbullet_notification("وضعیت سایت", "سیستم دوست‌یابی آنلاین است.")
