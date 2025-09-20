class Araba{
   late String renk;
   late int hiz;
   late bool calisiyormu;

   void calistir(){
     calisiyormu = true;
     hiz = 5;
   }
   void durdur(){
     calisiyormu = false;
     hiz = 0;
   }

   void gazaBas(){
     hiz = hiz  + 10 ;
   }

   void freneBas(){
     hiz = hiz - 10;
   }

   void hizDegistir(int kacKm){

     hiz = hiz + kacKm;

   }
   void bilgiAl(){
     print("rengi : $renk");
     print("hiz : $hiz");
     print("Çalışıyor mu? : $calisiyormu");
   }

}
