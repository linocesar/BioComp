#!/usr/bin/perl -w
use strict;
use warnings;

my @proteinas;
my @codon;
my %codegenetico =("ttt" => "Phe", "tct" => "Ser", "tat" => "Tir", "tgt" => "Cis",
 								"ttc" => "Phe", "tcc" => "Ser", "tac" => "Tir", "tgc" => "Cis",
 								"tta" => "Leu", "tca" => "Ser", "taa" => "TER", "tga" => "TER",
 								"ttg" => "Leu", "tcg" => "Ser", "tag" => "TER", "tgg" => "Trp",
 								"ctt" => "Leu", "cct" => "Pro", "cat" => "His", "cgt" => "Arg",
 								"ctc" => "Leu", "ccc" => "Pro", "cac" => "His", "cgc" => "Arg",
 								"cta" => "Leu", "cca" => "Pro", "caa" => "Gln", "cga" => "Arg",
 								"ctg" => "Leu", "ccg" => "Pro", "cag" => "Gln", "cgg" => "Arg",
 								"att" => "Ile", "act" => "Tre", "aat" => "Asn", "agt" => "Ser",
 								"atc" => "Ile", "acc" => "Tre", "aac" => "Asn", "agc" => "Ser",
 								"ata" => "Ile", "aca" => "Tre", "aaa" => "Lis", "aga" => "Arg",
 								"atg" => "Met", "acg" => "Tre", "aag" => "Lis", "agg" => "Arg",
 								"gtt" => "Val", "gct" => "Ala", "gat" => "Asp", "ggt" => "Gli",
 								"gtc" => "Val", "gcc" => "Ala", "gac" => "Asp", "ggc" => "Gli",
 								"gta" => "Val", "gca" => "Ala", "gaa" => "Glu", "gga" => "Gli",
 								"gtg" => "val", "gcg" => "Ala", "gag" => "Glu", "ggg" => "Gli");

my $DNA = (<STDIN>);
chomp($DNA);

@proteinas = values %codegenetico;
@codon = keys %codegenetico;
my $trinca;
my $tamanho = length($DNA);
my $resto = $tamanho%3;
my $tamanhoFita = ($tamanho - $resto)/3;

for (my $x = 0; $x < $tamanhoFita; $x++) {
      $trinca = lc(substr($DNA,3*$x, 3));
      print $trinca."->".$codegenetico{$trinca}."\n";
}
