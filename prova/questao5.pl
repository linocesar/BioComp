#!/usr/bin/env perl

my $sequencia = uc(<STDIN>);
chomp($sequencia);
my $kmer  = 5;
my $kmer_substring;

my $tamanho_sequencia = length $sequencia;

for (my $q = 0; $q < $tamanho_sequencia - $kmer + 1; $q++) {

     $kmer_substring = substr($sequencia,$q,$kmer);

     print $kmer_substring."\n";
}
