void main(List<String> arguments) {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

//Langkah 3 pembetulan
  var record2 = (1, 2); //membuat record yang ingin ditukar
  var hasilTukar = tukar(record2);

  print("");
  print("Langkah 3");
  print(
      "setelah ditukar: $hasilTukar"); //memanggil fungsi tukar dan menyimpan hasilnya
//End Langkah 3 pembetulan

//Langkah 4 Perbaikan
  /*
  (String, int) mahasiswa;
  print(mahasiswa);
  */
  var mahasiswa = ('Evi', 2141720030);
  print("");
  print("Langkah 4");
  print("Data Mahasiswa:");
  print("Nama: ${mahasiswa.$1}");
  print("NIM : ${mahasiswa.$2}");
//End Langkah 4 perbaikan

//Langkah 5
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print("");
  print("Langkah 5");
  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'

  //Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!
  var mahasiswa3 = ('Evi Amalia Midfia', a: 2141720030, b: true, 'last');

  print("");
  print("Langkah 5 Nama & Nim");
  print(mahasiswa3.$1); // Prints 'first'
  print(mahasiswa3.a); // Prints 2
  print(mahasiswa3.b); // Prints true
  print(mahasiswa3.$2); // Prints 'last'
//End Langkah 5
}

//Langkah 3
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
//End Langkah 3

