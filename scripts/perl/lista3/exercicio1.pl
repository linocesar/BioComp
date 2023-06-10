#!/usr/bin/env perl

use strict;
use warnings;

print "Informe uma base: ";
my $base = uc(<STDIN>);
chomp($base);

if($base eq "A"){
  print "Adenina\n";
}

if($base eq "G"){
  print "Guanina\n";
}

if($base eq "C"){
  print "Citosina\n";
}

if($base eq "T"){
  print "Timina\n";
}
