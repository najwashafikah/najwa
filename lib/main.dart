import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notepad App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pilih Opsi'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Riwayat'),
                onTap: () {
                  // Aksi untuk Riwayat
                  Navigator.of(context).pop(); // Menutup dialog
                },
              ),
              ListTile(
                title: Text('Sampah'),
                onTap: () {
                  // Aksi untuk Sampah
                  Navigator.of(context).pop(); // Menutup dialog
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notepad Homepage'),
        backgroundColor: Colors.blue[900], // Mengatur warna biru navy
      ),
      body: Container(
        color: Colors.blue, // Latar belakang biru
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Aksi untuk tombol Buat
                },
                child: Text('Buat'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Aksi untuk tombol Ubah
                },
                child: Text('Ubah'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _showPopup(context); // Menampilkan pop-up saat tombol Lihat ditekan
                },
                child: Text('Lihat'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Aksi untuk tombol Sematkan
                },
                child: Text('Sematkan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
