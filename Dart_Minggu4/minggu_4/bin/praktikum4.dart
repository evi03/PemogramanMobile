import 'dart:math';

void main(List<String> arguments) {
//Langkah 1
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);
//END Langkah 1

//Langkah 3
  /*list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
  */

  var list1 = [1, 2, null]; //perbaikan menambahkan var
  print("");
  print("Langkah 3");
  print(list1);
  var list3 = [0, ...list1]; //perbaikan menghapus ?
  print(list3.length);

  //Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators.
  var list11 = [1, 2, null]; // List awal
  var nim = '2141720030'; // Menambahkan elemen NIM menggunakan Spread Operator
  var list22 = [0, ...list11, nim];

  print("penambahan Nim Langkah 3");
  print(list11);
  print(list22);
  print(list22.length);
//End Langkah 3

//Langkah 4
  /*
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
  */

  bool promoActive = false; //ketika false

  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print("");
  print("Langkah 4");
  print(nav);
//End Langkah 4

//Langkah 5
  /* 
 var login = 'Manager';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);
  */

  //Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.
  var login = 'Guest'; // Umengubah ke guest

  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    login == 'Manager' ? 'Inventory' : null
  ];
  print("");
  print("Langkah 5");
  print(nav2);
//End Langkah 5

//Langkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print("");
  print("langkah 6");
  print(listOfStrings);

  //code Collection For
  List<int> numbers = [1, 2, 3, 4, 5];

  // Menggunakan for-in loop untuk menggandakan setiap elemen dalam list
  List<int> doubledNumbers = [];
  for (int number in numbers) {
    doubledNumbers.add(number * 2);
  }

  print("");
  print("Collection For");
  print("List Awal: $numbers");
  print("List Setelah Penggandaan: $doubledNumbers");

//End Langkah 6
}
