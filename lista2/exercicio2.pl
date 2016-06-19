#!/usr/bin/env perl

print "Digite um número:";
my $num1 = <STDIN>;
chomp($num1);
print "Digite outro número:";
my $num2 = <STDIN>;
chomp($num2);

for (my $q = $num1; $q <= $num2; $q++) {
  print $q."\n";
}
