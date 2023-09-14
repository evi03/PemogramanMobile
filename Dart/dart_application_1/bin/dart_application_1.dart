import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'dart:io';

void main(List<String> arguments) {
//membuat Variabel
  dynamic data = 'Hello World';
  data = 21;

  data = 'Hello world';
  data = 21;
  print(data);
//end membuat Variabel

//Membuat pemilihan
  var nilai = 90;
  if (nilai > 81) {
    print('A');
  } else if (nilai > 76 && nilai < 80) {
    print('B');
  } else if (nilai > 71 && nilai < 75) {
    print('C');
  } else if (nilai > 66 && nilai < 70) {
    print('D');
  } else {
    print('E');
  }
//end Membuat pemilihan

//membuat fungsi
  var Predikat = hitungNilai(nilai);
  print(Predikat);
  emoji();
}

String hitungNilai(int nilai) {
  if (nilai > 90) {
    return 'A (Sangat Baik)';
  } else if (nilai > 81) {
    return 'B (Baik)';
  } else if (nilai > 71) {
    return 'C (Cukup)';
  } else if (nilai > 66) {
    return 'D (Cukup Baik)';
  } else if (nilai >= 0) {
    return 'E (Kurang)';
  } else {
    return 'F (Kurang Baik)';
  }
}
//end membuat fungsi

//Mmebuat looping emoji
void emoji() {
  for (int i=1; i<10; i++){
    if (i<5){
      for(int j=1; j<=i; j++) {
        stdout.write('😊');
      }
    }else{
      for (int j=10; j>i; j--){
        stdout.write('😊');
      }
    }
    print('');
  }
}
//end membuat looping emoji
