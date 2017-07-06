#!/usr/bin/env perl
#github.com/linocesar

use warnings;
use strict;

my $filename = $ARGV[0];
my %sequencias;
my $head;
my $hamming;

open(my $arquivo, "<", $filename) or die "Não foi possível abrir o arquivo '$filename' $!";

while(my $linha = <$arquivo>){
  chomp($linha);

  if($linha =~ />/){
    $head = $linha;
  }else{
    $sequencias{$head} .= $linha."\n";
  }

}
close($arquivo);

my @seq = values %sequencias;

for (my $tx = 0; $tx < length($seq[0]); $tx++) {

      if(substr($seq[0], $tx, 1) ne substr($seq[1], $tx, 1)){
          $hamming++;
      }
}

print $hamming."\n";
