import 'dart:html';

import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      url: "https://media.monotaro.id/mid01/big/Perlengkapan%20Dapur%20%26%20Horeka/Makanan/Bahan%20Masak/Gulaku%20Gula%20Pasir%20Premium%20Putih/Gulaku%20Gula%20Pasir%20Premium%20Putih%201kg%201pc/22S028458074-1.jpg",
      name: 'sugar', 
      price: 5000,
      stok: 100,
      rating: 4),
    Item(
      url: "https://storage.hpaindonesia.net:8215/assets/7fe30dbc3d444089bae615daf63fbf5a/IMG-20210318-WA0025.jpg",
      name: 'Salt', 
      price: 2000,
      stok: 100,
      rating: 5)
  ];

final routeName = '/item';

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

// LANGKAH 7
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
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Navigasi Toko Flutter \nEvi Amalia Midfia - 2141720030',
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Material(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, routeName, arguments: item);
                  // Navigator.pushNamed(context, '/item', arguments: item); // soal 1
                },
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.network(
                            item.url.toString(),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Expanded(
                            child: Text(
                          item.name.toString(),
                          style: TextStyle(fontSize: 14),
                        )),
                        Expanded(
                            child: Text(
                          item.stok.toString(),
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                          child: Container(
                              child: Row(
                            children: [
                              Icon(
                                //membuat ikon bintang
                                Icons.star,
                                color: Color.fromARGB(255, 243, 121, 33),
                              ),
                              Text(item.rating.toString()),
                            ],
                          )),
                        ),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );

  //   throw UnimplementedError();
    
  }
}
