#!/usr/bin/env perl


my $dna=uc( <STDIN>);
chomp($dna);

my @lista_dna=split("",$dna);
my $at=0;

for( my $id=0; $id<scalar @lista_dna;$id++){

  if ($lista_dna[$id] eq "A") {
    $at++;
  }

  if ($lista_dna[$id] eq "T") {
   $at++;
 }

}#fim do for


my $tamanho_dna = length $dna;

print "AT: ".100*$at/$tamanho_dna."%\n";
