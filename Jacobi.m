clc
% x1, x2  �lk de�erlerini ata (�nceki x de�erleri)
% Keyfi olarak 0 veriyoruz.
x1o=0;
x2o=0;
% Epsilon soruda verilir ve iterasyonun ka� adimdan olu�aca��n� 
%Hata  buldu�umuz epsilon ile k�yaslar�z k���k oldu�unda biter.
%n Ka� iterasyon istenildi�ini belirler.
eps=0.0001;
hata=0.1;
n=0;
% Maximum ka� adim olaca��n� Nmax ile belirleriz.??
Nmax=100;
while(hata>eps && n<Nmax)

% x1, x2  degerlerini yanliz b�rakiriz.
% x sonraki degerleri bulmak i�in
% x sonraki degerleri bulurken x �nceki degerleri yerlerine yazar�z.
% x1s, x2s, x'in sonraki de�erleridir.
% x1o, x2o,x'in �nceki de�erleridir.
    x1s=(1 + 2*x2o);
    x2s=(4-x1o)/4;
% hatayi bulmak i�in x sonraki de�erlerden x �nceki de�erleri %��kart�r�z. ��karma i�lemi mutlak de�er i�indedir.
%abs mutlak de�er al�r.
%max komutu ise max farki bize verir.
    hata = max(abs([x1s-x1o x2s-x2o]));
% n bir artar bu da bize ka��nc� ad�mda oldu�umuzu verir.
    n=n+1;
% x �nceki de�erleri yerine x sonraki de�erleri yaz�l�r.
    x1o=x1s;
    x2o=x2s;
    fprintf('x1 : %f --------------- ' , x1o);
    fprintf('x2 : %f ---------------\n' , x2o);
end
 fprintf('Hata : %f\n' , hata);
 fprintf('Iterasyon sayisi  : %f' , n);