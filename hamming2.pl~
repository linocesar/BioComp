#!/usr/bin/perl

my $dna1 = uc(<STDIN>);
my $dna2 = uc(<STDIN>);

my @seq1 = split("", $dna1);
my @seq2 = split("", $dna2);

my $hamming = 0;

for(my $i = 0; $i < scalar @seq1; $i++ ){

if($seq1[$i] ne $seq2[$i])
	{
	$hamming++;
	}	


	
}

print $hamming."\n";
