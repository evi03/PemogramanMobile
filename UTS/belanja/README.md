# UTS MOBILE

# Praktikum 5: Membangun Navigasi di Flutter

### Langkah 1: Siapkan project baru
![Alt text](image-1.png)

#### Langkah 2: Mendefinisikan Route
> Buatlah dua buah file dart dengan nama `home_page.dart` dan `item_page.dart` pada folder `pages`. Untuk masing-masing file, deklarasikan `class HomePage` pada file `home_page.dart` dan `ItemPage` pada `item_page.dart`. Turunkan class dari `StatelessWidget`. Gambaran potongan kode dapat anda lihat sebagai berikut.

home_page.dart

![Alt text](image-2.png)

item_page.dart
  
![Alt text](image-3.png)

### Langkah 3: Lengkapi Kode di main.dart
> Setelah kedua halaman telah dibuat dan didefinisikan, bukalah file `main.dart.` Pada langkah ini anda akan mendefinisikan **Route** untuk kedua halaman tersebut. Definisi penamaan **route** harus bersifat **unique**. Halaman **HomePage** didefinisikan sebagai /. Dan halaman *ItemPage* didefinisikan sebagai **/item**. Untuk mendefinisikan halaman awal, anda dapat menggunakan `named argument initialRoute`. Gambaran tahapan ini, dapat anda lihat pada potongan kode berikut.

![Alt text](image-5.png)

### Langkah 4: Membuat data model
> Sebelum melakukan perpindahan halaman dari `HomePage` ke `ItemPage`, dibutuhkan proses pemodelan data. Pada desain mockup, dibutuhkan dua informasi yaitu nama dan harga. Untuk menangani hal ini, buatlah sebuah file dengan nama `item.dart` dan letakkan pada folder **models**. Pada file ini didefinisikan pemodelan data yang dibutuhkan. Ilustrasi kode yang dibutuhkan, dapat anda lihat pada potongan kode berikut.

![Alt text](image-7.png)

### Langkah 5: Lengkapi kode di class HomePage
> Pada halaman `HomePage` terdapat `ListView widget`. Sumber data ListView diambil dari model List dari object Item. Gambaran kode yang dibutuhkan untuk melakukan definisi model dapat anda lihat sebagai berikut.

![Alt text](image-6.png)

### Langkah 6: Membuat ListView dan itemBuilder
> Untuk menampilkan `ListView` pada praktikum ini digunakan `itemBuilder`. Data diambil dari definisi model yang telah dibuat sebelumnya. Untuk menunjukkan batas data satu dan berikutnya digunakan widget `Card`. Kode yang telah umum pada bagian ini tidak ditampilkan. Gambaran kode yang dibutuhkan dapat anda lihat sebagai berikut.

![Alt text](image-11.png)

**Output**

![Alt text](image-12.png)

### Langkah 7: Menambahkan aksi pada ListView
> Item pada ListView saat ini ketika ditekan masih belum memberikan aksi tertentu. Untuk menambahkan aksi pada ListView dapat digunakan widget `InkWell` atau `GestureDetector`. Perbedaan utamanya `InkWell` merupakan material widget yang memberikan efek ketika ditekan. Sedangkan `GestureDetector` bersifat umum dan bisa juga digunakan untuk gesture lain selain sentuhan. Pada praktikum ini akan digunakan widget `InkWell`.

> Untuk menambahkan sentuhan, letakkan cursor pada widget pembuka `Card`. Kemudian gunakan shortcut quick fix dari VSCode (**Ctrl +** . pada Windows atau **Cmd +** . pada MacOS). Sorot menu `wrap with widget...` Ubah nilai widget menjadi `InkWell` serta tambahkan named argument `onTap` yang berisi fungsi untuk berpindah ke halaman `ItemPage`. Ilustrasi potongan kode dapat anda lihat pada potongan berikut.

![Alt text](image-14.png)

**Output**

![Alt text](image-15.png)

# TUGAS
1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan `Navigator`. Perbarui kode pada bagian `Navigator` menjadi seperti berikut.

![Alt text](image-16.png)

2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan `ModalRoute`. Tambahkan kode berikut pada blok fungsi build dalam halaman `ItemPage`. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)

![Alt text](image-17.png)

3. Pada hasil akhir dari aplikasi **belanja** yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi `GridView` seperti di aplikasi marketplace pada umumnya.

4. Silakan implementasikan `Hero widget` pada aplikasi **belanja** Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations

5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan **Nama** dan **NIM** di footer aplikasi belanja Anda.

6. Selesaikan Praktikum Navigasi dan Rute tersebut, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file `README.md.` Kumpulkan link commit repository GitHub Anda ke spreadsheet yang telah disediakan!

#### JAWABAN SOAL NO 3 SAMPAI 5

**Menanbahkan Data Model url, stok, dan ratting pada halaman `models\item.dart`**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/1171a07b-a24f-4c89-a0e7-d8e121e40621)


**Menambahkan atribut url, stok, dan ratting pada halaman `home_page.dart`**

![image](https://github.com/evi03/PemogramanMobile/assets/95482289/13eb8ead-2dfe-42af-ab12-a13a9bf987fb)


**Membuat GridView dan implementasi Hero widget pada halaman `home_page.dart`**
```
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigasi Toko Flutter \nEvi Amalia Midfia - 2141720030'),
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
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Stok: ${item.stok.toString()}',
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
          )
        ),
      );
    },
  ),
);
```

**Output**
![image](https://github.com/evi03/PemogramanMobile/assets/95482289/5b5b9cdc-f5ad-48a6-9b95-bed641c459c0)


