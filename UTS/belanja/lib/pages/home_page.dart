import 'dart:html';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        pic: 'image/beras.png',
        name: 'Beras 5kg',
        review: 4.5,
        stok: 20,
        price: '56.000'),
    Item(
        pic: 'image/garam.png',
        name: 'Garam',
        review: 4.2,
        stok: 50,
        price: '10.000'),
    Item(
        pic: 'image/gula.png',
        name: 'Gulaku',
        review: 5,
        stok: 100,
        price: '20.000'),
    Item(
        pic: 'image/minyak.png',
        name: 'Minyak Bimoli',
        review: 3.5,
        stok: 30,
        price: '25.000'),
  ];

  HomePage({super.key});

// LANGKAH 6
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Navigasi Toko Flutter Evi'),
  //     ),
  //     body: Container(
  //       margin: const EdgeInsets.all(15),
  //       child: ListView.builder(
  //         padding: const EdgeInsets.all(8),
  //         itemCount: items.length,
  //         itemBuilder: (context, index) {
  //           final item = items[index];
  //           return Card(
  //             child: Container(
  //               margin: const EdgeInsets.all(8),
  //               child: Row(
  //                 children: [
  //                   Expanded(child: Text(item.name.toString())),
  //                   Expanded(
  //                     child: Text(
  //                       item.price.toString(),
  //                       textAlign: TextAlign.end,
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             ),
  //           );
  //         },
  //       ),
  //     ),
  //   );

// LANGKAH 7 & SOAL TUGAS 1
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Navigasi Toko Flutter Evi'),
  //     ),
  //     body: Container(
  //       margin: const EdgeInsets.all(15),
  //       child: ListView.builder(
  //         padding: const EdgeInsets.all(8),
  //         itemCount: items.length,
  //         itemBuilder: (context, index) {
  //           final item = items[index];
  //           return Material(
  //             child: InkWell(
  //               onTap: () {
  //                 Navigator.pushNamed(context, '/item');
  //                 Navigator.pushNamed(context, '/item', arguments: item); // soal 1
  //               },
  //               child: Card(
  //               margin: const EdgeInsets.all(8),
  //               child: Row(
  //                 children: [
  //                   Expanded(child: Text(item.name.toString())),
  //                   Expanded(
  //                     child: Text(
  //                       item.price.toString(),
  //                       textAlign: TextAlign.end,
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             ),
  //           ),
  //         );
  //       },
  //     ),
  //   ),
  // );

// TUGAS
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Navigasi Toko Flutter \nEvi Amalia Midfia - 2141720030'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Colors.purple],
            ),
          ),
        ),
        toolbarOpacity: 0.8, // Opacity toolbar menjadi 0.8
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom dalam GridView
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Hero(
                tag: item.name, // Tag Hero harus unik untuk setiap item
                child: Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          item.pic.toString(),
                          fit: BoxFit.cover, // Menyesuaikan gambar dengan baik
                        ),
                      ),
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold, // Teks menjadi bold
                        ),
                      ),
                      Text(
                        item.price,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold, // Teks menjadi bold
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Stok: ${item.stok.toString()}',
                              textAlign: TextAlign.start,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.red),
                                Text(item.review.toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          );
        },
      ),
    );

    //   throw UnimplementedError();
  }
}
