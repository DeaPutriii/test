import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> judul = [
      'Bubur Kuah Ayam',
      'Mie Nyemek',
      'Salad Buah ',
      'Chocolate Mousse'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.chevron_left, size: 40),
          title: const Text(
            "Menu Yummy Hari Ini",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Jumlah kolom
              crossAxisSpacing: 20.0, // Jarak horizontal antar item
              mainAxisSpacing: 20.0, // Jarak vertikal antar item
              childAspectRatio: 0.5, // Rasio tinggi dan lebar item
            ),
            itemCount: 4, // Jumlah total item di grid
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 5, // Mengatur elevasi (efek bayangan)
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15), // Membuat sudut membulat
                ),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image(
                                  image: const AssetImage('assets/images/yummy.jpeg'),
                                  fit: BoxFit.cover,
                                  height: constraints.maxHeight * 0.09,
                                  width: constraints.maxHeight * 0.09,
                                ),
                              ),
                              const SizedBox(width: 5.0),
                              Text('Yummy Official',
                                  style: TextStyle(
                                      fontSize: constraints.maxHeight * 0.04,
                                      color: Colors.black)),
                              const SizedBox(width: 5.0),
                              const CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 4.5,
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 7.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(15)),
                            child: Image(
                              image:
                                  AssetImage('assets/images/gambar$index.jpeg'),
                              fit: BoxFit.cover,
                              height: 150,
                              width: 150,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            judul[index],
                            style: TextStyle(
                              fontSize: constraints.maxHeight * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 20.0),
                          const Row(
                            children: <Widget>[
                              SizedBox(width: 10.0),
                              Icon(Icons.star,
                                  size: 22.0, color: Colors.orange),
                              SizedBox(width: 5.0),
                              Text('4.8', style: TextStyle(fontSize: 12.0)),
                              SizedBox(width: 25.0),
                              Icon(Icons.access_time_filled_rounded,
                                  size: 18.0, color: Colors.grey),
                              SizedBox(width: 5.0),
                              Text('45 mnt', style: TextStyle(fontSize: 12.0)),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(width: 10.0),
                                  Icon(Icons.visibility,
                                      size: 18.0, color: Colors.grey),
                                  SizedBox(width: 5.0),
                                  Text('12,7 rb',
                                      style: TextStyle(fontSize: 12.0)),
                                ],
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15.0,
                                child: Icon(
                                  Icons.bookmark_border,
                                  size: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
