#!/usr/bin/env perl
use strict;
use warnings;

my $filename = $ARGV[0];
my $flag = '>';
my $t ;
my $somatamanho = 0;
my @valores;
my $busca_flag;

system("echo '>f' >> $filename");

open(my $arquivo, '<:encoding(UTF-8)', $filename)
  or die "Não foi possível abrir o arquivo '$filename' $!";

 while (my $linha = <$arquivo>) {
   chomp($linha);

    $busca_flag = index($linha, $flag);


    if($busca_flag == 0 && $somatamanho > 0){
        push(@valores, $somatamanho);
        $somatamanho = 0;

    }

    if($busca_flag == -1){
      $t = length $linha;
      $somatamanho += $t;
    }

 }
 my $media;
 my $soma = 0;
 foreach my $x (@valores) {
   $soma += $x;
 }

 $media = $soma/2;
print "Média = ".$media."\n";
my $aux = 0;
my $N50;

my @ordem = sort {$b <=> $a} @valores;

foreach my $x (@ordem) {
  $aux += $x;
  if($aux >= $media){
    $N50 = $x;
    last;
  }
}
my $min = scalar @ordem;
print "N50\tBases\tMin\tMax\n";
print $N50."\t".$soma."\t".$ordem[$min-1]."\t".$ordem[0]."\n";
