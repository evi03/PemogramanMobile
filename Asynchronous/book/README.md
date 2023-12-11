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

> Kode langkah 2 lebih berfokus pada komunikasi dengan API eksternal (Google Books) untuk mendapatkan data.
Kodelangkah 5 dan 6 menunjukkan penggunaan Completer untuk mengelola suatu Future yang melibatkan perhitungan asinkron yang lebih sederhana.

# Praktikum 4: Memanggil Future secara paralel

#### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/7952d3d7-2f79-422b-adff-8e2084a90358)

#### Langkah 2: Edit onPressed()
Anda bisa hapus atau comment kode sebelumnya, kemudian panggil method dari langkah 1 tersebut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/b50ff55e-a639-4404-9968-d88030cd43b5)


#### Langkah 3: Run
Anda akan melihat hasilnya dalam 3 detik berupa angka 6 lebih cepat dibandingkan praktikum sebelumnya menunggu sampai 9 detik.

* **Soal 7: Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 7"**
  
![image](https://github.com/evi03/PemogramanMobile/assets/95482289/aa85ae1e-35fe-4960-8adb-e4dc63129ef7)


#### Langkah 4: Ganti variabel futureGroup
Anda dapat menggunakan FutureGroup dengan Future.wait seperti kode berikut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/008d0bd7-4aa0-48c8-8716-6d9aec9297b7)

* **Soal 8: Jelaskan maksud perbedaan kode langkah 1 dan 4!**
> Langkah 1 menggunakan FutureGroup untuk mengelola kumpulan Future. Sementara langkah 4 menggunakan Future.wait untuk menunggu sejumlah Future selesai sebelum melanjutkan.

# Praktikum 5: Menangani Respon Error pada Async Code
#### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/44bcbab5-5d5a-4816-942b-05149c5f2cf5)

#### Langkah 2: ElevatedButton
Ganti dengan kode berikut

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/ff081236-7c6f-4762-aabf-3e0b3961d2b1)

#### Langkah 3: Run
Lakukan run dan klik tombol GO! maka akan menghasilkan seperti gambar berikut.

* **Soal 9**

Capture hasil praktikum Anda berupa

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/010e15e8-4562-4ac2-9b34-f8b519903285)

#### Langkah 4: Tambah method handleError()
Tambahkan kode ini di dalam class _FutureStatePage

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/99c6f4f1-044e-43b1-b611-ca3aa8d925fb)

#### Langkah 4: Tambah method handleError()
Tambahkan kode ini di dalam class _FutureStatePage

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/8c132b46-780d-49d4-8428-a88ad585a1d5)



* **Soal 10**
  
Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/1f932907-f3a3-44d4-bb70-74761eacbdb4)

# Praktikum 6: Menggunakan Future dengan StatefulWidget
#### Langkah 1: install plugin geolocator
Tambahkan plugin geolocator dengan mengetik perintah berikut di terminal.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/09827b99-9871-4059-9eeb-4cac7c1d8029)

#### Langkah 2: Tambah permission GPS
Jika Anda menargetkan untuk platform Android, maka tambahkan baris kode berikut di file android/app/src/main/androidmanifest.xml

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/04e2eafc-e71e-4f11-b5b2-da0b23ae68aa)

#### Langkah 3: Buat file geolocation.dart
Tambahkan file baru ini di folder lib project Anda.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/9126b715-76e8-4869-b05e-a1ef7b3c3189)

#### Langkah 4: Buat StatefulWidget
Buat class LocationScreen di dalam file geolocation.dart

#### Langkah 5: Isi kode geolocation.dart
```import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';
  @override
  Void initState() {
    super.initState();
    getPosition().then((Position myPos){
      myPosition =
      'Latidute: ${myPos.latitude.toString()} - Longitude:
      {myPos.longitude.toString()}';
      setState(() {
        myPosition = myPosition;
      });
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Evi Amalia Midfia Current Location')), // Soal 11
      body: Center(child: Text(myPosition)),
    );
  }

  Future<Position> getPosition() async{
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position? position =
      await Geolocator.getCurrentPosition();
    return position;
  }
}
```
* **Soal 11**
Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/a7596c2f-00cd-4c82-a495-163109cc801e)

#### Langkah 6: Edit main.dart
Panggil screen baru tersebut di file main Anda seperti berikut.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/a64c82c6-5db0-4e44-a087-2abc00fe6807)

#### Langkah 7: Run
Run project Anda di device atau emulator (bukan browser), maka akan tampil seperti berikut ini.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/83a41050-81b5-4c73-b8a4-f3fbaf621989)

#### Langkah 8: Tambahkan animasi loading
Tambahkan widget loading seperti kode berikut. Lalu hot restart, perhatikan perubahannya.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/053c0489-6ac9-4f22-b735-c1ad72bcdaa1)

* **Soal 12**
> Jika Anda tidak melihat animasi loading tampil, kemungkinan itu berjalan sangat cepat. Tambahkan delay pada method getPosition() dengan kode await Future.delayed(const Duration(seconds: 3));
Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 12".

# Praktikum 7: Manajemen Future dengan FutureBuilder
#### Langkah 1: Modifikasi method getPosition()
Buka file geolocation.dart kemudian ganti isi method dengan kode ini.

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/db9955dd-b491-4cef-b901-bb951869827e)

#### Langkah 2: Tambah variabel
Tambah variabel ini di class _LocationScreenState

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/630117e0-03f5-4966-8eb9-70bc48f1315f)

#### Langkah 3: Tambah initState()
Tambah method ini dan set variabel position

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/92242bfd-6e41-40ae-925c-5cef7e056798)

#### Langkah 4: Edit method build()
Ketik kode berikut dan sesuaikan. Kode lama bisa Anda comment atau hapus.

![Uploading image.png…]()

* **Soal 13:  Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?**
>

#### Langkah 5: Tambah handling error
Tambahkan kode berikut untuk menangani ketika terjadi error. Kemudian hot restart.
