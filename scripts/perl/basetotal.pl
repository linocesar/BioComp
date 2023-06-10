#!/usr/bin/env perl


my $filename = @ARGV[0];
my $totalbases;
my $arquivo;
my $linha;
my %dataset;
my $header;
my $tamanho;

open($arquivo, "<", $filename) or die "Não foi possível abrir o arquivo '$filename' $!";

$linha = <$arquivo>;

while (chomp($linha)) {

  if(substr($linha, 0,1) eq "@"){

      chomp($linha = readline($arquivo));
      $tamanho = length($linha);
      $totalbases += $tamanho;
      #print $linha."\n";

}

$linha = <$arquivo>;
}
print $totalbases."\n";
