#!/usr/bin/env perl
use strict;
use warnings;

my $filename = $ARGV[0];
my $flag = ">";
my $header;
my $linha;
my $arquivo;
my %dataset;

my $tamanho_sequencia;
my $soma_tamanho_sequencias = 0;
my $media_sequencias;

open($arquivo, '<:encoding(UTF-8)', $filename) or die "Não foi possível abrir o arquivo '$filename' $!";

while ($linha = <$arquivo>) {
  chomp($linha);

  if(index($linha, $flag) == 0){
    $header = $linha;

  }else{
    $tamanho_sequencia = length $linha;
    $soma_tamanho_sequencias += $tamanho_sequencia;
    $dataset{$header} += $tamanho_sequencia;
  }

}

close($arquivo);

my @lista_aux = values %dataset;
my @lista_sequencias_tamanho = sort {$a <=> $b} @lista_aux;

$media_sequencias = $soma_tamanho_sequencias / 2;
my $soma_acumulada = 0;
my $N50;
my $numero_bases = scalar @lista_sequencias_tamanho;
my $maior_seq = $numero_bases - 1;
my $x = 0;

do{

  $N50 = $lista_sequencias_tamanho[$x++];
  $soma_acumulada += $N50;


}while($media_sequencias >= $soma_acumulada);

print "Arquivo: ".$filename."\n";
print "N50: ".$N50."\n";
print "Menor Base: ".$lista_sequencias_tamanho[0]."\n";
print "Maior Base: ".$lista_sequencias_tamanho[$maior_seq]."\n";
print "Número de Contigs: ".$numero_bases."\n";
print "Número de Bases: ".$soma_tamanho_sequencias."\n";
