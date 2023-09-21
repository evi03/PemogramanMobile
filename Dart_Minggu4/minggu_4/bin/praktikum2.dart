void main(List<String> arguments) {
  //langkah 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
  //End langkah 1

  //langkah 3
/*
  var names1 = <String>{};
  Set<String> names2 = {}; 
  var names3 = {}; 

  print(names1);
  print(names2);
  print(names3);
*/

  var names1 = <String>{};
  Set<String> names2 = {};
  
  names1.add("Nama: Evi Amalia Midfia");
  names1.add("NIM: 2141720030");

  names2.addAll(["Nama: Evi Amalia Midfia", "NIM: 2141720030"]);

  print(names1);
  print(names2);
  
  //End langkah 3
}
