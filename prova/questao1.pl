#!/usr/bin/env perl

my $numero = <STDIN>;
chomp($numero); #retira quebra de linha.

if($numero%2 == 1){ # numero mod 2 = pode ser 0 ou 1.
  print "Impar\n";
}else{
  print "Par\n";
}
