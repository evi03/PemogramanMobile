void main(List<String> arguments) {
//Langkah 1
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);
//END Langkah 1

//Langkah 3
/*  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print("");
  print(gifts);
  print(nobleGases);
*/
  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Evi Amalia Midfia'; //Penambahan elemen nama pada variabel mhs1
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  mhs2[1111] = '2141720030'; //penambahan elemen Nim pada variabel mhs2
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print("");
  print(mhs1);
  print(mhs2);
  print(gifts);
  print(nobleGases);

//End Langkah 3
}
