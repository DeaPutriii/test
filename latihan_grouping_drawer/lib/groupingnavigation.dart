import 'package:flutter/material.dart';

// Kelas utama yang merupakan StatelessWidget untuk halaman utama aplikasi.
class MyHomePage extends StatelessWidget {
  // Konstruktor untuk menerima dan menyimpan judul halaman.
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold menyediakan struktur dasar untuk halaman, termasuk AppBar dan Drawer.
      appBar: AppBar(
        // Bagian AppBar di atas halaman dengan teks judul yang diberikan.
        title: Text(
          title,
          style: const TextStyle(color: Colors.white), // Warna teks putih.
        ),
        backgroundColor: Colors.blue, // Warna latar belakang AppBar biru.
        foregroundColor: Colors.white, // Warna ikon dan teks pada AppBar menjadi putih.
      ),
      body: const Center(
        // Bagian tengah halaman, berisi teks dengan ukuran besar.
        child: Text(
          'Kelompok 11', // Teks yang ditampilkan di tengah halaman.
          style: TextStyle(fontSize: 50), // Ukuran font 50 untuk teks.
        ),
      ),
      drawer: Drawer(
        // Drawer adalah menu samping yang dapat digeser dari kiri.
        child: ListView(
          // Menggunakan ListView untuk membuat daftar item dalam drawer.
          padding: EdgeInsets.zero, // Menghilangkan padding default dari ListView.
          children: [
            const DrawerHeader(
              // Header di bagian atas drawer dengan latar belakang biru.
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'XII RPL 1', // Teks judul pada header.
                style: TextStyle(
                    fontWeight: FontWeight.bold, // Font tebal.
                    fontSize: 50, // Ukuran font besar.
                    color: Colors.white), // Warna teks putih.
              ),
            ),
            ExpansionTile(
              // ExpansionTile untuk daftar "Materi", dapat diperluas untuk menampilkan sub-item.
              title: const Text('Materi'), // Judul tile "Materi".
              children: <Widget>[
                // Daftar sub-item di bawah "Materi".
                ListTile(
                  title: const Text('Materi 1'), // Sub-item "Materi 1".
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer saat item di-tap.
                  },
                ),
                ListTile(
                  title: const Text('Materi 2'), // Sub-item "Materi 2".
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer saat item di-tap.
                  },
                ),
                ListTile(
                  title: const Text('Materi 3'), // Sub-item "Materi 3".
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer saat item di-tap.
                  },
                ),
                ListTile(
                  title: const Text('Materi 4'), // Sub-item "Materi 4".
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer saat item di-tap.
                  },
                ),
                ListTile(
                  title: const Text('Materi 5'), // Sub-item "Materi 5".
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer saat item di-tap.
                  },
                ),
              ],
            ),
            ExpansionTile(
              // ExpansionTile untuk daftar "Tugas", dapat diperluas untuk menampilkan sub-item.
              title: const Text('Tugas'), // Judul tile "Tugas".
              children: <Widget>[
                // Daftar sub-item di bawah "Tugas".
                ListTile(
                  title: const Text('Tugas 1'), // Sub-item "Tugas 1".
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer saat item di-tap.
                  },
                ),
                ListTile(
                  title: const Text('Tugas 2'), // Sub-item "Tugas 2".
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer saat item di-tap.
                  },
                ),
                ListTile(
                  title: const Text('Tugas 3'), // Sub-item "Tugas 3".
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer saat item di-tap.
                  },
                ),
                ListTile(
                  title: const Text('Tugas 4'), // Sub-item "Tugas 4".
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer saat item di-tap.
                  },
                ),
                ListTile(
                  title: const Text('Tugas 5'), // Sub-item "Tugas 5".
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer saat item di-tap.
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}