% Adı ve Soyadı: İlhan Faruk Karaca
% Öğrenci Numarası: 250707110
% Bölümü: Bilgisayar Mühendisliği
% Dersin Kodu ve Adı: MBM 103: Programlamaya Giriş
% Dersin Verildiği Akademik Dönem: 2025-2026 Güz Dönemi
% Proje Numarası: 1
% Öğretim Elemanının Adı: Dr. Öğr. Üyesi Esra ÇELİK
function sayi=Ilhan_Faruk_Karaca_250707110_BM103_AltFonksiyon1

while true
    d1 = floor(rand() * 9) + 1;%1-9 arasında tek basamaklı bir sayı üretmek için
    d2= floor(rand()*10);%0-9 arasında tek basamaklı bir sayı üretmek için
    d3= floor(rand()*10);%0-9 arasında tek basamaklı bir sayı üretmek için
    d4= floor(rand()*10);%0-9 arasında tek basamaklı bir sayı üretmek için
    if (d1 ~= d2) && (d1 ~= d3) && (d1 ~= d4) && (d2 ~= d3) && (d2 ~= d4) && (d3 ~= d4)
        %eğer üretilen sayılar eşit değilse döngüyü kırıyoruz
        break;
    end
end

sayi = (d1*1000)+(d2*100)+(d3*10)+d4;%her üretilen sayıyı 4 basamaklı bir sayı olması için (1000,100,10) ile çarpıp topluyoruz