#!/usr/bin/env perl

use strict;
use warnings;

my $filename = $ARGV[0];
my $c = 0;
my %data;
my $head;
my $num_reads = 0;
my $num_reads_user;
my $aux = 0;

open(my $arquivo, "<", $filename) or die "Não foi possível abrir o arquivo '$filename' $!";

while(my $linha = <$arquivo>){
chomp($linha);

 $c++;

  if ($c == 1) {
      $head = $linha;
    }else{
      $data{$head} .= $linha."\n";
 }

 if ($c == 4) {
   $c = 0;
   $num_reads++;
 }

 }
close($arquivo);

print "Numero de reads: ".$num_reads."\n";
print "Quantas READS você deseja?\n";

$num_reads_user = <STDIN>;
chomp($num_reads_user);

$filename =~ s/.[a-z]*$/_$num_reads_user.fastq/;

open(OUT,'>', $filename);

foreach my $x (keys %data) {

    if($aux++ < $num_reads_user){
      print OUT $x."\n";
      print OUT $data{$x};
    }else{
      last;
    }

}

print "Seu arquivo com ".$num_reads_user. " reads foi criado em: ".$filename."\n";
close(OUT);
