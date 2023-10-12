import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32.0),
    child: Row(
      children: [
        Expanded(
          /* soal 1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Jawaban Soal 1
            children: [
              /* soal 2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8.0), // Jawaban Soal 2
                child: const Text(
                  'Wisata Gunung di Batu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Batu, Malang, Indonesia',
                style: TextStyle(
                  color: Colors.grey, // Menggunakan Wrana Abu-Abu
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(32.0), // Jawaban Soal 3
          child: Row(
            children: [
              /* soal 3*/
              Icon(
                Icons.star, // Untuk Icon Bintang
                color: Colors.red, // Menggunakan warna merah
              ),
              const Text('41'),
            ],
          ),
        ),
      ],
    ),
  );

  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        // 'Carilah teks di internet yang sesuai '
        // 'dengan foto atau tempat wisata yang ingin '
        // 'Anda tampilkan. '
        // 'Tambahkan nama dan NIM Anda sebagai '
        // 'identitas hasil pekerjaan Anda. '
        // 'Selamat mengerjakan 🙂.'
        'TAMAN REKREASI SELECTA: '
        'Taman Rekreasi dilengkapi dengan Kolam renang, taman Bunga dan berbagai wahana. '
        'HOTEL SELECTA: '
        'Hotel Selecta Memiliki 80 kamar dengan berbagai fasilitas yang cocok untuk berbagai keperluan. '
        'RESTORAN SELECTA: '
        'Menyediakan Berbagai macam masakan Indonesia dan Cantonese '
        'author: Evi Amalia Midfia 2141720030 ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Evi Amalia Midfia 2141720030',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Evi Amalia Midfia'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/slecta.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
