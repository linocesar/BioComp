#!/usr/bin/perl

my $seq1 = uc(<STDIN>);
my $seq2 = uc(<STDIN>);
my $hamming=0;

for(my $p = 0; $p < scalar $seq1; $p++)
 
 {
   if(substr($seq1, $p, 1) ne substr($seq2, $p, 1)) 
   {
     $hamming++;
   }
 }
print $hamming."\n";

