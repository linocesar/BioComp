#!/usr/bin/perl
use strict;
use warnings;

#declaração das variavéis.
my $rna = "AGUCUACUGCAGUCAGUACAUGCAUUGAUC"; #string rna
my $trinca;#trinca
my $l = length $rna; #tamanho da sequencia rna
my $restoRna; #
my $tamanhoFita;

#pré-processamento
# RestoRNA pode ser 0, 1 ou 2. Se for 0 entao o tamanho do RNA é múltiplo de 3, senão é 1 ou 2;
$restoRna = $l % 3;

#tamanhoFita é o comprimento real a ser percorrido pelo laço for.
$tamanhoFita = ($l-$restoRna)/3;

#processamento final: a sequencia RNA a cada iteração é quebrada. Por ex:
#para m = 0 temos *AGU*CUACUGCAGUCAGUACAUGCAUUGAUC
#para m = 1 temos AGU*CUA*CUGCAGUCAGUACAUGCAUUGAUC
#para m = 2 temos AGUCUA*CUG*CAGUCAGUACAUGCAUUGAUC
for (my $m = 0; $m < $tamanhoFita; $m++) {

    $trinca = substr($rna,3*$m, 3);
    print $trinca."\n";
}
