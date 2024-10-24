import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Item Service Coffee"),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(20.0),
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.brown[50],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                  bottomRight: Radius.circular(160),
                  bottomLeft: Radius.circular(160),
                ),
                boxShadow: [BoxShadow(color: Colors.brown, offset: Offset(3, 3), blurRadius: 10)]
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage('assets/images/coffe.jpeg'),
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Kopi Cetholl',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown[900]),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Kopi Cetholl adalah kopi yang dicubit-cubit Well karena bisa membuat mata kita melek Well, jadi bagi para pelanggan kopi cethol akan merasakan susana baru saat minum kopi',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.0),
                  TextButton(
                    style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.brown), // Mengatur warna background
                    ),
                    onPressed: () {
                      print('Explore Now');
                    },
                    child: Text('Explore Now',
                        style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(height: 35.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
