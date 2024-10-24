import 'package:flutter/material.dart';

// Fungsi main() merupakan titik awal eksekusi aplikasi Flutter.
void main() => runApp(const MyApp());

// MyApp merupakan widget utama aplikasi, yang bersifat stateless.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // _title adalah judul aplikasi yang statis dan konstan.
  static const String _title = 'XII RPL 1';

  @override
  Widget build(BuildContext context) {
    // MaterialApp adalah widget yang menyediakan tema dasar untuk aplikasi.
    return const MaterialApp(
      title: _title,  // Menentukan judul aplikasi.
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),  // Menentukan widget yang ditampilkan pertama kali, yaitu BottomNavigation.
    );
  }
}

// BottomNavigation adalah widget yang bersifat stateful untuk menampilkan bottom navigation bar.
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  _BottomNavigation createState() => _BottomNavigation();  // Membuat instance dari _BottomNavigation yang memiliki state.
}

// State dari BottomNavigation yang menyimpan indeks pilihan pengguna di bottom navigation bar.
class _BottomNavigation extends State<BottomNavigation> {
  int _selectedIndex = 0;  // Menyimpan indeks item yang dipilih saat ini di bottom navigation bar.

  // optionStyle adalah gaya teks yang digunakan pada setiap opsi layar.
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // _widgetOptions adalah daftar widget yang ditampilkan pada body tergantung item yang dipilih.
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',  // Opsi pertama, layar Home.
      style: optionStyle,
    ),
    Text(
      'Business',  // Opsi kedua, layar Business.
      style: optionStyle,
    ),
    Text(
      'School',  // Opsi ketiga, layar School.
      style: optionStyle,
    ),
  ];

  // Fungsi ini dipanggil saat item di bottom navigation bar ditekan.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;  // Mengubah indeks pilihan berdasarkan item yang ditekan.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XII RPL 1'),  // Menampilkan judul di AppBar.
        backgroundColor: Colors.blue[200],  // Mengatur warna latar belakang AppBar.
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),  // Menampilkan widget sesuai item yang dipilih di bottom navigation bar.
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[200],  // Mengatur warna latar belakang BottomNavigationBar.
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),  // Ikon untuk item pertama.
            label: 'Home',  // Label untuk item pertama.
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),  // Ikon untuk item kedua.
            label: 'Business',  // Label untuk item kedua.
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),  // Ikon untuk item ketiga.
            label: 'School',  // Label untuk item ketiga.
          ),
        ],
        currentIndex: _selectedIndex,  // Menentukan item yang sedang dipilih.
        selectedItemColor: Colors.blue[900],  // Warna ikon dan label untuk item yang dipilih.
        onTap: _onItemTapped,  // Fungsi yang dipanggil saat item ditekan.
      ),
    );
  }
}
