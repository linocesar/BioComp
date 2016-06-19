#!/usr/bin/env perl

use strict;
use warnings;

#Um hash como contador de cada base
my %lista_frequencia = ("A" => 0, "G" => 0, "C" => 0, "T" => 0);
my $sequencia = uc<STDIN>;
chomp($sequencia);
my $base;
my $contador = 0;

#loop para ler uma base a cada iteração
for (my $k = 0; $k < length $sequencia; $k++) {

      $base = substr($sequencia, $k, 1);   #isola uma única base da sequencia
      $contador = $lista_frequencia{$base};#Recupera a frequencia da base e atribui ao contador.
      $lista_frequencia{$base} = $contador + 1;#frequencia é atualizada.

}

my @chaves = keys %lista_frequencia; #cria um array com as chaves da lista_frequencia.
my $tamanho = scalar @chaves; #tamanho do array

#Saída
for (my $a = 0; $a < $tamanho; $a++) {
  print $chaves[$a]."->".$lista_frequencia{$chaves[$a]}."\n";
}
