#!/usr/bin/env perl

print "Informe sua sequencia: DNA ou RNA?";
my $sequencia = uc<STDIN>;
chomp($sequencia);

if(index($sequencia, "U")!= -1){
  print "RNA.\n";
}else{
  print "DNA.\n";
}
