import 'package:flutter/material.dart';

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
                // Navigasi ke Halaman Kedua
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
