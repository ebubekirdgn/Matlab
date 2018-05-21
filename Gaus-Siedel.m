clc
% x1, x2  İlk değerlerini ata (Önceki x değerleri)
% Keyfi olarak 0 veriyoruz.
x1o=0;
x2o=0;
% Epsilon soruda verilir ve iterasyonun kaç adimdan oluşacağını 
%Hata  bulduğumuz epsilon ile kıyaslarız küçük olduğunda biter.
%n Kaç iterasyon istenildiğini belirler.
eps=0.0001;
hata=0.1;
n=0;
% Maximum kaç adim olacağını Nmax ile belirleriz.??
Nmax=100;
while(hata>eps && n<Nmax)

% x1, x2  degerlerini yanliz bırakiriz.
% x sonraki degerleri bulmak için
% x sonraki degerleri bulurken x Önceki degerleri yerlerine yazarız.
% x1s, x2s, x'in sonraki değerleridir.
% x1o, x2o,x'in önceki değerleridir.
    x1s=(1 + 2*x2o);
    x2s=(4-x1s)/4;
% hatayi bulmak için x sonraki değerlerden x önceki değerleri %çıkartırız. Çıkarma işlemi mutlak değer içindedir.
%abs mutlak değer alır.
%max komutu ise max farki bize verir.
    hata = max(abs([x1s-x1o x2s-x2o]));
% n bir artar bu da bize kaçıncı adımda olduğumuzu verir.
    n=n+1;
% x önceki değerleri yerine x sonraki değerleri yazılır.
    x1o=x1s;
    x2o=x2s;
    
    fprintf('x1 : %f --------------- ' , x1o);
    fprintf('x2 : %f ---------------\n' , x2o);
end
 fprintf('Hata : %f\n' , hata);
 fprintf('Iterasyon sayisi  : %f' , n);
