/*
Future --fonksiyon tanımlamasında fonksiyon isminden önce gelir.metod asenkron çalışacağını belirtir ve await komutu geldiğinde beklmesini söyler
async -- fonksiyon isminden sonra gelir. aynı anda birden fazla işlem yapmamız gerektiğinde kullanırız.örn -- veri çekme -- dosya işlemleri
await -- sadece async fonksiyon içinde kullanılır.amaç asenkron işlem yaparken yarım kalan bazı kodlamalar
hata oluşturuabilir. hata oluşturmaması için await kullanılır ve asenkron işlem içinde o kodlamnın bitmesi beklenir.

*/

Future<void> main() async{
  print("verilerin alinmasi bekleniyor");
  var veri  = await veriTabanindanVeriAl();
  print("Veri alınıyor");
  print("Alınan veri: $veri");

}
Future<String> veriTabanindanVeriAl() async{
    for(var i = 1; i<=5;i++){
      Future.delayed(Duration(seconds: i) , () => print("alinan veri miktari :% ${i*20}"));
    }
    return Future.delayed(Duration(seconds: 5) , () => "DB data set");
} 
