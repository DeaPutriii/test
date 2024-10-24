import 'package:flutter/material.dart'; // Import paket material untuk membangun antarmuka pengguna Flutter.
import 'groupingnavigation.dart'; // Import file eksternal lainnya (groupingnavigation.dart) yang mungkin berisi widget atau fungsi tambahan.

void main() {
  // Fungsi utama yang digunakan untuk menjalankan aplikasi Flutter.
  runApp(const MyApp()); // Menjalankan aplikasi dengan memanggil widget MyApp.
}

class MyApp extends StatelessWidget {
  // Kelas MyApp yang merupakan turunan dari StatelessWidget.
  
  static const header = 'Data XII RPL 1'; 
  // Variabel statis konstanta yang menyimpan string untuk judul header aplikasi.
  
  const MyApp({super.key}); 
  // Konstruktor kelas MyApp, dengan super.key digunakan untuk menginisialisasi key widget.

  @override
  Widget build(BuildContext context) {
    // Override method build yang menghasilkan widget yang membentuk UI aplikasi.
    return const MaterialApp(
      // Menggunakan MaterialApp untuk membangun aplikasi Flutter dengan material design.
      title: header, 
      // Mengatur judul aplikasi menggunakan variabel statis header.
      home: MyHomePage(title: header), 
      // Mengatur halaman utama aplikasi menggunakan widget MyHomePage dan memberikan title.
    );
  }
}
