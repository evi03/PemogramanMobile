void main(List<String> arguments) {
  //print('Hello world: ${minggu_4.calculate()}!');

  //Langkah 1
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
  //End Langkah 1

  //Langkah 3
/*
  var list3 = [1, 2, 3, 4, 5];
  assert(list3.length == null);
  assert(list3[1] == "Evi amalia midfia");
  print(list3.length);
  print(list3[1]);

  list3[1] = 1;
  assert(list3[1] == "2141720030");
  print(list3[1]);
*/

  //Perbaikan langkah 3
  List<String?> list3 = List.filled(6, null);

  // Mengisi nama dan NIM pada index ke-1 dan ke-2
  list3[1] = "Nama: Evi Amalia Midfia";
  list3[2] = "NIM: 2141720030";

  // Print 
  print("");
  print("Panjang List ${list3.length}");
  print(list3[1]);
  print(list3[2]);
//End Langkah 3
  
}
