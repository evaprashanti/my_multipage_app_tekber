import 'package:flutter/material.dart';
import 'package:my_multipage_app_tekber/second_page.dart';
import 'package:my_multipage_app_tekber/third_page.dart';
import 'package:my_multipage_app_tekber/home_page.dart'; // Import HomePage
import 'package:logger/logger.dart'; // Import logger

void main() {
  runApp(MyApp());
}

var logger = Logger(); // Inisialisasi logger

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-Page App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Pertama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                logger.d('Tombol "Buka Halaman Kedua" ditekan!'); // Logging
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Buka Halaman Kedua'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Kedua'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ini adalah Halaman Kedua'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                logger.d('Tombol "Buka Halaman Ketiga" ditekan!'); // Logging
                Navigator.pushNamed(context, '/third');
              },
              child: Text('Buka Halaman Ketiga'),
            ),
            ElevatedButton(
              onPressed: () {
                logger.d('Tombol "Kembali" ditekan!'); // Logging
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Ketiga'),
      ),
      body: Center(
        child: Text('Ini adalah Halaman Ketiga'),
      ),
    );
  }
}
