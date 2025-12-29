% Adı ve Soyadı: İlhan Faruk Karaca
% Öğrenci Numarası: 250707110
% Bölümü: Bilgisayar Mühendisliği
% Dersin Kodu ve Adı: MBM 103: Programlamaya Giriş
% Dersin Verildiği Akademik Dönem: 2025-2026 Güz Dönemi
% Proje Numarası: 1
% Öğretim Elemanının Adı: Dr. Öğr. Üyesi Esra ÇELİK

function [tork,kutle]=TorkKutleHesapla(sayi)%imza
p=[-2,-1,1,2];%satır vektörü tanımlandı
sayilar=BasamaklaraAyir(sayi);%fonksiyon sayesinde her bir basamağı satır vektörüne aktarılır
tork=0;% tork sonucunu hesaplamadan önce 0 a eşitlenir
for i=1:4
    tork=tork+(p(i)*sayilar(i));  %döngü sayesinde her bir say P vektörü ve basamağı çarpıp topluyoruz
end

kutle =sayilar(1)+sayilar(2)+sayilar(3)+sayilar(4); %her bir basamağı topluyor