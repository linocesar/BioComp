#!/usr/bin/env perl
# execucao: perl itsrafa.pl <fasta> <lista>
use warnings;
use strict;

my $file_fasta = $ARGV[0]; #arquivo multifasta
my $file_lista = $ARGV[1]; #lista com cabeçalhos. Um por linha
my %dataset;
my $head;
my %map;

open(my $arquivo1, "<", $file_fasta) or die "Não foi possível abrir o arquivo '$file_fasta' $!";

while(my $linha = <$arquivo1>){
   chomp($linha);

   $linha =~ s/\r//g;

   if ($linha =~ /^>/) {

    $linha =~ s/^>//;
    my @aux = split(/\s/, $linha);
    $head = substr($aux[0], 0, length($aux[0]));

   }else{
     $dataset{$head} .= $linha."\n";
   }

}
close($arquivo1);

open(my $arquivo2, "<", $file_lista) or die "Não foi possível abrir o arquivo '$file_lista' $!";

  while(my $linha = <$arquivo2>){
    chomp($linha);
    $linha =~ s/\r//g;

    $map{$linha} = "";

}
close($arquivo2);

my @data = keys %dataset;

foreach my $x (sort @data) {

  if(!exists $map{$x}){
    print ">".$x."\n";
    print $dataset{$x};
  }
}
