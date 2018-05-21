clc
% x1, x2  Ýlk deðerlerini ata (Önceki x deðerleri)
% Keyfi olarak 0 veriyoruz.
x1o=0;
x2o=0;
% Epsilon soruda verilir ve iterasyonun kaç adimdan oluþacaðýný 
%Hata  bulduðumuz epsilon ile kýyaslarýz küçük olduðunda biter.
%n Kaç iterasyon istenildiðini belirler.
eps=0.0001;
hata=0.1;
n=0;
% Maximum kaç adim olacaðýný Nmax ile belirleriz.??
Nmax=100;
while(hata>eps && n<Nmax)

% x1, x2  degerlerini yanliz býrakiriz.
% x sonraki degerleri bulmak için
% x sonraki degerleri bulurken x Önceki degerleri yerlerine yazarýz.
% x1s, x2s, x'in sonraki deðerleridir.
% x1o, x2o,x'in önceki deðerleridir.
    x1s=(1 + 2*x2o);
    x2s=(4-x1o)/4;
% hatayi bulmak için x sonraki deðerlerden x önceki deðerleri %çýkartýrýz. Çýkarma iþlemi mutlak deðer içindedir.
%abs mutlak deðer alýr.
%max komutu ise max farki bize verir.
    hata = max(abs([x1s-x1o x2s-x2o]));
% n bir artar bu da bize kaçýncý adýmda olduðumuzu verir.
    n=n+1;
% x önceki deðerleri yerine x sonraki deðerleri yazýlýr.
    x1o=x1s;
    x2o=x2s;
    fprintf('x1 : %f --------------- ' , x1o);
    fprintf('x2 : %f ---------------\n' , x2o);
end
 fprintf('Hata : %f\n' , hata);
 fprintf('Iterasyon sayisi  : %f' , n);