import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.black),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddPage()),
                );
              },
            ),
            SizedBox(width: 16.0),
            IconButton(
              icon: const Icon(Icons.login),
              onPressed: () {
                // Aksi untuk ikon login
              },
            ),
            SizedBox(width: 16.0),
            const Icon(Icons.person),
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300, // Tinggi ditingkatkan

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildGridItem('Buku Induk', 'Al Wensy', Colors.green,
                        'assets/images/a.jpeg'),
                    SizedBox(width: 15.0), // Jarak antar item
                    _buildGridItem('Buku Tulis', 'XI RPL', Colors.blue,
                        'assets/images/c.jpeg'),
                    SizedBox(width: 15.0), // Jarak antar item
                    _buildGridItem('Buku Tugas', 'XII RPL', Colors.purple,
                        'assets/images/b.jpeg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                'Classroom',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.black),
              ),
            ),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Beranda'),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: const Icon(Icons.calendar_today),
                title: const Text('Kalender'),
                onTap: () {
                  Navigator.pop(context);
                }),
            ExpansionTile(
              leading: const Icon(Icons.school),
              title: const Text(' Terdaftar'),
              children: <Widget>[
                ListTile(
                  title: const Text('Daftar Tugas'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Buku Induk'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            ListTile(
                leading: const Icon(Icons.archive),
                title: const Text('Kelas yang diarsipkan'),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Setelan'),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(
      String title, String subtitle, Color color, String imageAsset) {
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white, // Warna latar belakang putih
        borderRadius: BorderRadius.circular(20), // Garis melengkung pada sudut
        border: Border.all(
          color: Colors.grey, // Warna garis abu-abu
          width: 1, // Lebar garis
        ),
      ),
      child: Stack(
        children: [
          // Bagian berwarna di atas
          Positioned(
            top: 0, // Menempel pada garis pinggir atas
            left: 0, // Menempel pada garis pinggir kiri
            child: Container(
              width: 300, // Lebar kotak
              height: 100, // Seperempat dari tinggi kotak

              decoration: BoxDecoration(
                  color: color, // Warna kotak
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  )),
            ),
          ),
          // Konten kotak
          Positioned(
            left: 16.0, // Jarak dari kiri
            top:
                60.0, // Jarak dari atas (sesuaikan agar tidak bertumpuk dengan bagian warna)
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(imageAsset),
                  radius: 30, // Ukuran avatar dikurangi
                ),
                SizedBox(width: 16.0), // Jarak antara avatar dan teks
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22, // Ukuran font judul dikurangi
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0), // Jarak antar elemen
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18, // Ukuran font subjudul dikurangi
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Ikon
          Positioned(
            right: 10, // Jarak dari tepi kanan
            bottom: 10, // Jarak dari tepi bawah
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.person,
                    color: Colors.black, size: 30.0), // Ukuran ikon
                SizedBox(width: 12.0), // Jarak antar ikon
                Icon(Icons.folder,
                    color: Colors.black, size: 30.0), // Ukuran ikon
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyHomePage(title: 'GridView Example'),   // Menetapkan halaman utama aplikasi
  ));
}

class AddPage extends StatelessWidget { // Halaman tambahan yang akan ditampilkan saat FloatingActionButton ditekan
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Page'), // Judul halaman tambahan
      ),
      body: Center(
        child: const Text('This is the Add Page'), // Konten halaman tambahan
      ),
    );
  }
}
