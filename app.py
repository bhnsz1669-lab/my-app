import requests

# اطلاعات ربات تلگرام خود را اینجا وارد کنید
TELEGRAM_TOKEN = "8908791443:AAHwRqlLoZyZnCYQQtcSg8WRd99UjQ0FQK4"
CHAT_ID = "8397139242"

def send_telegram_notification(message):
    """
    این تابع پیام مشخص شده را به تلگرام شما ارسال می‌کند.
    """
    url = f"https://api.telegram.org/bot{TELEGRAM_TOKEN}/sendMessage"
    
    payload = {
        "chat_id": CHAT_ID,
        "text": message,
        "parse_mode": "Markdown"  # برای اینکه بتوانید متن را بولد یا زیباسازی کنید
    }
    
    try:
        # ارسال درخواست به سرور تلگرام
        response = requests.post(url, json=payload)
        if response.status_code == 200:
            print("پیام با موفقیت به تلگرام ارسال شد.")
        else:
            print(f"خطا در ارسال! کد وضعیت: {response.status_code}")
            print(response.text)
    except Exception as e:
        print(f"خطای شبکه رخ داده است: {e}")

# نمونه تست برای اجرای کد:
if __name__ == "__main__":
    text_test = "🔔 **گزارش وضعیت سیستم**\n\nسیستم دوست‌یابی آنلاین است و آماده کار می‌باشد."
    send_telegram_notification(text_test)
