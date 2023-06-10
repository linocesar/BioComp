#!/usr/bin/perl
use strict;
use warnings;

# O kmer.pl é um script em Perl projetado para realizar a contagem de k-mers em uma sequência de DNA ou RNA.
# Os k-mers são subsequências de tamanho k extraídas da sequência original, onde k é um valor inteiro especificado pelo usuário.
# A contagem de k-mers é útil para várias análises e aplicações em bioinformática, como análise de similaridade de sequências,
# detecção de padrões e identificação de regiões conservadas.

my $sequencia = "GTGTCGATCGATAGTCGATCAGCTAGCTAGTCA";
my $tamanho_sequencia = length $sequencia;
my $kmer = 4;
my $valor; #recebe a cada loop um k-mer.
my @distribuicao; #lista para armazenar a distribuição dos k-mers.
my %lista_frequencia; # armazena chave e valor. Neste caso as chaves são os k-mers e os
                      #valores são as frequências.

#loop para formação dos k-mers
for (my $p = 0; $p < $tamanho_sequencia-$kmer+1; $p++) {

    $valor = substr($sequencia, $p, $kmer); #cria um k-mer
    unshift(@distribuicao, $valor); #kmer adicionada a lista_frequencia
    $lista_frequencia{$valor} = 0; #Cada chave inicializada igual a 0

}

my @chaves = keys %lista_frequencia; #lista dos k-mers
my $it = 0; # variável auxiliar para percorrer a lista distribuicao
my $contador = 0; #Variável auxiliar pra contagem dos k-mers

#loop para contagem dos k-mers
do{
    $contador = $lista_frequencia{$distribuicao[$it]};  #contador recebe o valor vinculado a uma chave.
    $lista_frequencia{$distribuicao[$it]} = $contador + 1; #Como os k-mers sao chaves únicas entao é incrementar o valor
    $it++;

}while($it < scalar @distribuicao); #condição de saída

#loop para informar a saída. No caso apenas k-mers com frequencia maior que 1.
for (my $i = 0; $i < scalar @chaves; $i++) {

    if($lista_frequencia{$chaves[$i]} > 1){
        print $chaves[$i]."->".$lista_frequencia{$chaves[$i]}."\n";
    }
}
