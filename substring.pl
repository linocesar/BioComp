#!/usr/bin/perl

#Utilizando a funcao: substr(<string>, <numero1>, <numero2>);
#retorna uma substring
#<numero1>: posição inicial de quebra da <string>
#<numero2>: posicao final de quebra da <string>

my $nome = "Rommel";

print substr($nome,0,1)."\n";
print substr($nome,0,2)."\n";
print substr($nome,0,3)."\n";
print substr($nome,0,4)."\n";
print substr($nome,0,5)."\n";
print substr($nome,0,6)."\n\n";

print "Outro EX:\n";
print substr($nome,0,4)."\n";
print substr($nome,2,4)."\n";
print substr($nome,2,2)."\n";
print substr($nome,3,2)."\n";
print substr($nome,4,2)."\n";
