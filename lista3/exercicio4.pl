#!/usr/bin/env perl

use strict;
use warnings;

my $sequencia; #sequencia de entrada informada pelo usuário
my $match; #variavel para contagem de acertos
my $tamanho_sequencia; # tamanho da sequencia informada pelo usuário
my @lista_base; # armazena cada base numa lista

my $kmer; # as subtstrings geradas
my %kmer_frequencia; # hash que armazena a frequencia de cada kmer unico.
my $k = 4; #tamanho das substrings kmers
my @chaves; # lista que retorna os kmers unicos(chaves) do hash frequencia.

# O primeiro laço(DoWhile) trata se a sequencia informada é uma sequencia correta. Não sai
# desse tratamento, enquanto o usuário nao entrar com uma sequencia correta.
# A lógica aqui é testar cada caracter da sequencia de entrada armazenada
# na lista_base e contar se o caracter da iteração é igual a A, G, C ou T. Caso
# positivo, então é contar match+1. Saindo do laço for entao é hora de testar o match:
# Se o match for menor que o tamanho_sequencia entao é mostrar que deu erro e retonar
# ao inicio informando uma sequencia novamente. Caso contrario, sai do laço principal dowhile
# e está pronto para processamento dos kmers.
do{
print "Informe sua sequencia DNA: ";
$sequencia = uc(<STDIN>);
chomp($sequencia);

$tamanho_sequencia = length $sequencia;
@lista_base = split("", $sequencia);
$match = 0;

for (my $k = 0; $k < scalar @lista_base; $k++) {
      if(($lista_base[$k] eq "A") ||
         ($lista_base[$k] eq "C") ||
         ($lista_base[$k] eq "G") ||
         ($lista_base[$k] eq "T"))
      {
        $match++;
      }
}

if($match != $tamanho_sequencia){
  print "Sequência errada!\n";
}

}while($match < $tamanho_sequencia);

# Segundo laço principal para criação dos kmers e os seus hash frequencia
for (my $i = 0; $i < $tamanho_sequencia - $k + 1; $i++) {

      $kmer = substr($sequencia, $i, $k); # criação dos kmers 4
      $kmer_frequencia{$kmer}++; # frequencia para cada chave unica
}

@chaves = keys %kmer_frequencia; # criação da lista com as chaves do kmer_frequencia.

for (my $i = 0; $i < scalar @chaves; $i++) {
  print $chaves[$i]."->".$kmer_frequencia{$chaves[$i]}."\n";
}
