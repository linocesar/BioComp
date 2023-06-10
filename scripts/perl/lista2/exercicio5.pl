#!/usr/bin/perl
use strict;
use warnings;

my $sequencia = "GTGTCGATCGATAGTCGATCAGCTAGCTAGTCA";
my $tamanho_sequencia = length $sequencia;
my $kmer = 4;
my $valor; #recebe a cada loop um k-mer.
my %lista_frequencia; # armazena chave e valor. Neste caso as chaves são os k-mers e os
                      #valores são as frequências.

#loop para formação dos k-mers
for (my $p = 0; $p < $tamanho_sequencia-$kmer+1; $p++) {

    $valor = substr($sequencia, $p, $kmer); #cria um k-mer
    $lista_frequencia{$valor}++; # contabilizando as frequências para cada chave

}

my @chaves = keys %lista_frequencia; #lista dos k-mers

#loop para informar a saída. No caso apenas k-mers com frequencia maior que 1.
for (my $i = 0; $i < scalar @chaves; $i++) {

    if($lista_frequencia{$chaves[$i]} > 1){
        print $chaves[$i]."->".$lista_frequencia{$chaves[$i]}."\n";
    }
}
