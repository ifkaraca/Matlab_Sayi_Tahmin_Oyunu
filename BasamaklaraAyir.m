% Adı ve Soyadı: İlhan Faruk Karaca
% Öğrenci Numarası: 250707110
% Bölümü: Bilgisayar Mühendisliği
% Dersin Kodu ve Adı: MBM 103: Programlamaya Giriş
% Dersin Verildiği Akademik Dönem: 2025-2026 Güz Dönemi
% Proje Numarası: 1
% Öğretim Elemanının Adı: Dr. Öğr. Üyesi Esra ÇELİK
function basamaklar=BasamaklaraAyir(sayi)


d1=mod(floor(sayi/1000),10); % Sayıyı 1000'e bölüp tam kısmını alır, mod 10 ile binler basamağını elde eder
d2=mod(floor(sayi/100),10);% Sayıyı 100'e bölüp tam kısmını alır, mod 10 ile yüzler basamağını elde eder
d3=mod(floor(sayi/10),10);% Sayıyı 10'a bölüp tam kısmını alır, mod 10 ile onlar basamağını elde eder
d4=mod(sayi,10);% Sayının 10'a bölümünden kalanını alarak birler basamağını elde eder

basamaklar = [d1,d2,d3,d4];