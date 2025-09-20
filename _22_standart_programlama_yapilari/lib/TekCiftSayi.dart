import 'dart:io';

void main(){
  while(true){
    print("Çıkmak için (1) - e basınız.Devam etmek için diğer sayilara basiniz.");
    String? input = stdin.readLineSync();
    int? sayi = int.tryParse(input!);
    if(sayi != null && sayi != 1){
      int sonuc = sayi % 2;
      if(sonuc > 0)
        {
          print("Sayi tektir.");
        }
      else{
        print("Sayi cifttir.");
      }

    }
    else if(sayi == 1){
      print("Program sonlandırılıyor.");
      break;
    }


  }
}

