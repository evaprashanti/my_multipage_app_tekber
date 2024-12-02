import 'package:flutter/material.dart';

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
                print('Tombol "Buka Halaman Ketiga" ditekan!');
                Navigator.pushNamed(context, '/third');
              },
              child: Text('Buka Halaman Ketiga'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Tombol "Kembali" ditekan!');
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
