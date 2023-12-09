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

https://github.com/evi03/PemogramanMobile/assets/95482289/f7a36c61-fef2-40c8-9538-7c2af3321dfa

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

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/7f3a0d74-1602-4ad0-9130-3e52c68f993d)

#### Langkah 4: Run

Akhirnya, run atau tekan F5 jika aplikasi belum running. Maka Anda akan melihat seperti gambar berikut, hasil angka 6 akan tampil setelah delay 9 detik.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/c11ba9a1-7443-431f-8dde-7f32e4b72bae)

## Praktikum 3: Menggunakan Completer di Future

#### Langkah 1: Buka main.dart
Pastikan telah impor package async berikut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/07c7e52f-fd20-4e66-9e9d-f83d41a0591e)

#### Langkah 2: Tambahkan variabel dan method
Tambahkan variabel late dan method di class _FuturePageState seperti ini.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/cf0018cd-c6fb-4d8e-b0ca-40080d6bb12f)

#### Langkah 3: Ganti isi kode onPressed()
Tambahkan kode berikut pada fungsi onPressed(). Kode sebelumnya bisa Anda comment.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/24a4f766-e4cd-4711-bfec-39d633fa770e)

#### Langkah 4:
Terakhir, run atau tekan F5 untuk melihat hasilnya jika memang belum running. Bisa juga lakukan hot restart jika aplikasi sudah running. Maka hasilnya akan seperti gambar berikut ini. Setelah 5 detik, maka angka 42 akan tampil.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/ff3487be-050e-4513-82de-84417f4e6906)

> Maksud kode langkah 2 yaitu untuk menciptakan dan menyelesaikan Future secara manual dengan menggunakan Completer. Ini dapat berguna dalam situasi di mana perlu mengontrol sendiri kapan suatu Future selesai.

#### Langkah 5: Ganti method calculate()
Gantilah isi code method calculate() seperti kode berikut, atau Anda dapat membuat calculate2()

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/c90b3b5e-7477-40bb-9e6f-9049a6ea42b4)

#### Langkah 6: Pindah ke onPressed()
Ganti menjadi kode seperti berikut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/be523df4-7ea8-49af-8f64-f98f7d58c35d)

**Output**

belum di ss

> Kode langkah 2 lebih berfokus pada komunikasi dengan API eksternal (Google Books) untuk mendapatkan data.
Kodelangkah 5 dan 6 menunjukkan penggunaan Completer untuk mengelola suatu Future yang melibatkan perhitungan asinkron yang lebih sederhana.
