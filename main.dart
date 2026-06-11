<!DOCTYPE html>
<html lang="fa" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Hub - چت هاب</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Tahoma, Arial, sans-serif;
        }
        body {
            background-color: #12181f;
            color: #ffffff;
            direction: rtl;
            line-height: 1.6;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 20px;
            background-color: #1a2332;
        }
        .header-icons {
            display: flex;
            gap: 15px;
        }
        .container {
            padding: 20px;
        }
        .app-info {
            display: flex;
            align-items: center;
            gap: 20px;
            margin-bottom: 30px;
        }
        .app-icon {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, #1e88e5, #1565c0);
            border-radius: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 35px;
        }
        .stats {
            display: flex;
            justify-content: space-around;
            background-color: #1a2332;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 30px;
        }
        .stat-item {
            text-align: center;
        }
        .stat-value {
            font-weight: bold;
            color: #42a5f5;
        }
        .install-btn {
            display: block;
            width: 100%;
            background-color: #42a5f5;
            color: white;
            padding: 15px;
            border: none;
            border-radius: 25px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            margin-bottom: 30px;
        }
        .screenshots {
            display: flex;
            gap: 15px;
            overflow-x: auto;
            padding-bottom: 15px;
        }
        .screenshot-item {
            min-width: 150px;
            height: 250px;
            background-color: #2a394a;
            border-radius: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 10px;
        }
        .description {
            margin-top: 30px;
            background-color: #1a2332;
            padding: 15px;
            border-radius: 10px;
        }
    </style>
</head>
<body>

<header>
    <div>←</div>
    <div class="header-icons">
        <span>🔍</span>
        <span>⋮</span>
    </div>
</header>

<div class="container">
    <div class="app-info">
        <div class="app-icon">❤️</div>
        <div>
            <h2>چت هاب | گپ و گفتگو</h2>
            <p style="color: #8899a6;">شبکه‌های اجتماعی</p>
        </div>
    </div>

    <div class="stats">
        <div class="stat-item">
            <div>نصب</div>
            <div class="stat-value">۵۰ هزار</div>
        </div>
        <div class="stat-item">
            <div>امتیاز</div>
            <div class="stat-value">۴.۶ ★</div>
        </div>
        <div class="stat-item">
            <div>حجم</div>
            <div class="stat-value">۱۱ مگابایت</div>
        </div>
    </div>

    <button class="install-btn">نصب</button>

    <div class="screenshots">
        <div class="screenshot-item">پیش‌نمایش ۱</div>
        <div class="screenshot-item">پیش‌نمایش ۲</div>
        <div class="screenshot-item">پیش‌نمایش ۳</div>
        <div class="screenshot-item">پیش‌نمایش ۴</div>
    </div>

    <div class="description">
        <h3>توضیحات</h3>
        <p style="color: #8899a6; font-size: 14px; margin-top: 10px;">
            چت هاب | مرکز گفت‌وگوهای سالم، سریع و صمیمی. به چت هاب خوش آمدید! اینجا هاب گفتگوهای فارسی‌زبان‌هاست. یه فضای پویا، شاد و امن برای حرف زدن، آشنا شدن و خوش‌گذرونی بدون دغدغه. بدون شماره، بدون ایمیل، فقط چند ثانیه و وارد...
        </p>
    </div>
</div>

</body>
</html>
      
