% Adı ve Soyadı: İlhan Faruk Karaca
% Öğrenci Numarası: 250707110
% Bölümü: Bilgisayar Mühendisliği
% Dersin Kodu ve Adı: MBM 103: Programlamaya Giriş
% Dersin Verildiği Akademik Dönem: 2025-2026 Güz Dönemi
% Proje Numarası: 1
% Öğretim Elemanının Adı: Dr. Öğr. Üyesi Esra ÇELİK

gizliSayi = Ilhan_Faruk_Karaca_250707110_BM103_AltFonksiyon1;%fonksiyon çağrılarak 4 basamaklı bir sayı alınıyor
[gizliTork,gizliKutle] = TorkKutleHesapla(gizliSayi); %fonksiyonla gizli sayının torku ve kütlesi hesaplanıyor
sayac=0;%sayac ilk işlem için 0'a tanımlanıyor
tahminIndexi =[];%tahmin sırası için satır vektörü
tahminSayi = [];%tahmin edilen sayılar için satır vektörü
tahminDeltaTork = [];%tahminlerin sayıların delta torkları için satır vektörü
tahminDeltaKutle = [];%tahmin sayıların  delta kütleleri satır için vektörü
while true
    tahmin = input("1000 ile 9999 arası bir sayı gir: ");%kullanıcıdan 4 basamaklı bir sayı isteniyor
    if tahmin<=9999 && tahmin>=1000 &&floor(tahmin)==tahmin %önce istenilen aralıkta ve tam sayımı diye sorgulanıyor
        s = BasamaklaraAyir(tahmin);%girilen sayıyı basamaklara ayırıyor
        if (s(1) ~= s(2)) && (s(1) ~= s(3)) && (s(1) ~= s(4)) && (s(2) ~= s(3)) && (s(2) ~= s(4)) && (s(3) ~= s(4))%eğer istenilen aralıkta ise benzersiz bir sayı mı diye kontrol ediliyor
           [tahminTork,tahminKutle] = TorkKutleHesapla(tahmin);%girilen sayıyının torku ve kütlesi hesaplanıyor
           deltaTork = gizliTork-tahminTork;%delta tork hesaplanıyor
           deltaKutle = gizliKutle - tahminKutle;%delta kütle hesaplanıyor
           sayac = sayac +1;%sayac artırılıyor
           tahminIndexi = [tahminIndexi,sayac];%tahmin edilen sayının indexi ekleniyor
           tahminSayi = [tahminSayi,tahmin]; %tahmin edilen sayı ekleniyor
           tahminDeltaTork =[tahminDeltaTork,deltaTork]; %tahmin sonucu oluşan delta indise eklendi
           tahminDeltaKutle = [tahminDeltaKutle,deltaKutle];%tahmin sonucu oluşan delta kütle indise eklendi
           if gizliSayi == tahmin%tahmin edilen sayının gizli sayıya eşit olup olmadığı sorgulanıyor
               disp("Tebrikler Doğru Sayıyı Buldunuz")%eğer eşitse doğru sayıyı buldu demekktir ve kullanıcıya gerekli bilgiler veriliyor
               fprintf("Doğru Sayı: %g \n",gizliSayi)
               fprintf('Deneme\tTahmin\t\tD.Tork\t\tD.Kutle\n');
               disp("-------------------------------------------------------")
               for i=1:length(tahminIndexi)
                   fprintf('%g\t\t%g\t\t%g\t\t%g\n',tahminIndexi(i),tahminSayi(i),tahminDeltaTork(i),tahminDeltaKutle(i))
               end
               break;%tüm veriler kullanıcıya gösterildikten sonra programın devam etmemesi için programı durduyor
           else %eşit değilse kullanıcıya gösterilicek veriler yazılıyor
               if deltaTork==0 && deltaKutle==0
                   disp("UYARI: Statik Denge Tespit Edildi! Terazi mükemmel şekilde dengede, ancak sayısal yapılandırma yanlış. Oyun devam edecektir. Çakışmayı kırmak için lütfen farklı bir rakam kombinasyonu deneyin.");
                   disp("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
               else
                   disp("----------------------")
                   fprintf("Tahmininiz: %g \n",tahmin)
                   disp("----------------------")
                   fprintf("Delta Tork: %g \n",deltaTork)
                   fprintf("Delta Kütle: %g \n",deltaKutle)
                   disp("----------------------")
               end
           end
        else%benzersiz bir sayı değilse uyarıyor
            disp("Benzersiz bir sayı olmalı")
        end
    else%istenilen aralıkta değilse uyarıyor
        disp("1000 ila 9999 arasında bir sayı olmalı")
    end
end
