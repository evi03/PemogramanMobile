# Pemrograman Asynchronous di Flutter

**Nama: Evi Amalia Midfia**

**Kelas: TI-3A**

**Absen: 13**

**NIM: 2141720030**

## Praktikum 1: Mengunduh Data dari Web Service (API)

#### Langkah 1: Buat project baru
Kemudian Tambahkan dependensi http dengan mengetik perintah berikut di terminal.
![Alt text](image.png)

#### Langkah 2: Cek file pubspec.yaml
Jika berhasil install plugin, pastikan plugin http telah ada di file pubspec ini seperti berikut.

![Alt text](image-1.png)

#### Langkah 3: Buka file main.dart

Ketiklah kode seperti berikut ini.
```import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evi Amalia Midfia', //soal 1
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          ElevatedButton(
            child: const Text('GO!'),
            onPressed: (),
          ),
          const Spacer(),
          Text(result),
          const Spacer(),
          const CircularProgressIndicator(),
          const Spacer(),
        ]),
      ),
    );
  }
```

#### Langkah 4: Tambah method getData()
Tambahkan method ini ke dalam class _FuturePageState yang berguna untuk mengambil data dari API Google Books.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/d2b572aa-6835-4a83-a07d-bc25d37abf52)

**Soal 2**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/c8ea46f2-f86d-4111-9be3-3d72f1f5c65a)

**Output**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/1b53ca4f-8a49-4145-90c4-12d244011f4b)

#### Langkah 5: Tambah kode di ElevatedButton
Tambahkan kode pada 'onPressed' di 'ElevatedButton' seperti berikut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/1eeba1c9-5195-4784-81e9-208e9be1dd9b)

**Output**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/b786d752-076c-483a-9d07-41307ae52027)

> **substring:** Ini adalah langkah untuk mengambil sebagian teks dari badan respons. digunakan untuk mengambil 450 karakter pertama dari badan respons. Hal ini dilakukan agar tidak menampilkan terlalu banyak teks. **CatchError**: Ini adalah bagian dari Future API yang menangkap kesalahan yang mungkin terjadi selama eksekusi Future. Jika ada kesalahan selama pemanggilan `getData`, blok kode dalam `.catchError` akan dijalankan. Pada contoh ini, jika terjadi kesalahan, variabel `result` akan diatur dengan pesan kesalahan 'An error occurred'. Jadi, secara keseluruhan, kode tersebut berfungsi untuk mengambil data dari permintaan HTTP setelah tombol "GO!" ditekan, kemudian memproses responsnya, dan menampilkan hasil atau menangani kesalahan jika ada.

## Praktikum 2: Menggunakan await/async untuk menghindari callbacks

#### Langkah 1: Buka file main.dart

Tambahkan tiga method berisi kode seperti berikut di dalam 'class _FuturePageState'.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/d0e6c5ec-52b6-4958-aaa6-b798080c9e86)

#### Langkah 2: Tambah method count()

Lalu tambahkan lagi method ini di bawah ketiga method sebelumnya.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/d5245b34-655d-4ef9-92b2-c0d0ab181dfb)

#### Langkah 3: Panggil count()

Lakukan comment kode sebelumnya, ubah isi kode onPressed() menjadi seperti berikut.
