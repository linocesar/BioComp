#!/usr/bin/env perl
#github.com/linocesar

# A distância de Hamming entre duas sequências é calculada contando o número de posições
# nas quais os símbolos correspondentes nas sequências são diferentes. Em outras palavras,
# é o número de substituições necessárias para transformar uma sequência na outra.

# Por exemplo, considere as sequências "ATCGGTA" e "ATAGGTA". Ao comparar posição por posição,
# podemos ver que as duas sequências diferem no segundo símbolo ("T" versus "A"). Portanto, a
# distância de Hamming entre essas duas sequências é igual a 1.

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
