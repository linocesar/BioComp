#!/usr/bin/perl

# funcao index retorna um escalar
# declaração da funcao: index(<string1>,<string2>)
# Se <string2> estiver contida em <string1>, entao retona o indice da primeira ocorrencia de
#de <string2> em <string1>. Caso contrário retorna -1;.

my $nome = "RommelRommel";
my $busca = "l";
my $indice = index($nome,$busca);


print $indice."\n";
