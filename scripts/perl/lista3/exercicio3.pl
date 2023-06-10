#!/usr/bin/env perl
use strict;
use warnings;

my $sequencia = uc(<STDIN>);
chomp($sequencia);

my @lista = split("", $sequencia);
my $gc = 0;

for (my $k = 0; $k < scalar @lista; $k++) {
  if($lista[$k] eq "C"){
    $gc++;
  }
  if ($lista[$k] eq "G") {
    $gc++;
  }

}

print "GC: ".100*$gc/(length $sequencia)."%"."\n";
