import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Hub UI',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff12181f), // رنگ پس‌زمینه تیره مطابق تصویر
        fontFamily: 'Vazir', // می‌توانید از فونت‌های فارسی مثل وزیر یا ایران‌سنس استفاده کنید
      ),
      home: const AppDetailsScreen(),
    );
  }
}

class AppDetailsScreen extends StatelessWidget {
  const AppDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // راست‌چین کردن کل صفحه برای زبان فارسی
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.arrow_back),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // بخش هدر: آیکون و نام برنامه
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 20),
                          Text(
                            'چت هاب | گپ و گفتگو',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    // آیکون برنامه (لوگوی قلب)
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xff1e88e5), Color(0xff1565c0)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Icon(
                        Icons.favorite_border,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),

                // بخش اطلاعات: نصب، امتیاز، حجم
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildInfoColumn('نصب', '۵۰ هزار'),
                    _buildDivider(),
                    _buildInfoColumn('امتیاز', '۴.۶ ★'),
                    _buildDivider(),
                    _buildInfoColumn('حجم', '۱۱ مگابایت'),
                  ],
                ),
                const SizedBox(height: 32),

                // دکمه بزرگ نصب
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff42a5f5), // رنگ آبی دکمه
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: const Text(
                      'نصب',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),

                // اسکرول افقی تصاویر پیش‌نمایش (Screenshots)
                SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      _buildScreenshotCard(Colors.blue.shade700, 'با اپ چت‌هاب\nدوستای جدید پیدا کن!'),
                      _buildScreenshotCard(Colors.grey.shade800, 'پروفایل کاربران'),
                      _buildScreenshotCard(Colors.blue.shade900, 'چت با جنس مخالف\nدر فضایی امن'),
                      _buildScreenshotCard(Colors.grey.shade900, 'لیست گفتگوها'),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // بخش توضیحات
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'توضیحات',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('بیشتر >', style: TextStyle(color: Color(0xff42a5f5))),
                    ),
                  ],
                ),
                const Text(
                  'چت هاب | مرکز گفت‌وگوهای سالم، سریع و صمیمی...\nاینجا هاب گفتگوهای فارسی‌زبان‌هاست. یه فضای پویا و شاد برای پیدا کردن دوستان جدید بدون دغدغه.',
                  style: TextStyle(color: Colors.grey, height: 1.5),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ویجت کمکی برای ستون‌های اطلاعاتی (حجم، امتیاز و...)
  Widget _buildInfoColumn(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  // خط جداکننده عمودی بین بخش‌های اطلاعاتی
  Widget _buildDivider() {
    return Container(
      height: 30,
      width: 1,
      color: Colors.grey.withOpacity(0.3),
    );
  }

  // ویجت کمکی برای ساخت کارت‌های پیش‌نمایش برنامه
  Widget _buildScreenshotCard(Color color, String text) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11, color: Colors.white),
        ),
      ),
    );
  }
}