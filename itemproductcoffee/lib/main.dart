import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Item Product Coffee"),
              centerTitle: true,
            ),
            body: ListView(
                padding: const EdgeInsets.only(
                    top: 50.0, bottom: 50.0, left: 150, right: 150),
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 10.0,
                      left: 5.0,
                      right: 5.0,
                    ),
                    decoration: BoxDecoration(color: Colors.brown[50]),
                    child: Column(
                      children: <Widget>[
                        const ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(160),
                            bottomLeft: Radius.circular(160),
                          ),
                          child: Image(
                            image: AssetImage('assets/images/coffe.jpeg'),
                            fit: BoxFit.cover,
                            height: 250,
                            width: 185,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          'Kopi Cetholl',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown[900]),
                        ),
                        const SizedBox(height: 10.0),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Rp. 30.000',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              'Rp. 45.000',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RatingBar.builder(
                                itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                    ),
                                onRatingUpdate: (rating) {},
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                ignoreGestures: true,
                                itemCount: 5,
                                itemSize: 18),
                            const SizedBox(width: 10.0),
                            const Text(
                              '3.2k reviews',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                Colors.brown), // Mengatur warna background
                          ),
                          onPressed: () {
                            print('Shop Now');
                          },
                          child: const Text('Shop Now',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                      ],
                    ),
                  )
                ])));
  }
}
