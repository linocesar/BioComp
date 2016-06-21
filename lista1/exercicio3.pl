#!/usr/bin/perl
my $trinca1;
my $trinca2;
my $proteina1;
my $proteina2;
my %codegenetico =("ttt" => "phe", "tct" => "ser", "tat" => "tir", "tgt" => "cis",
 								"ttc" => "phe", "tcc" => "ser", "tac" => "tir", "tgc" => "cis",
 								"tta" => "leu", "tca" => "ser", "taa" => "ter", "tga" => "ter",
 								"ttg" => "leu", "tcg" => "ser", "tag" => "ter", "tgg" => "trp",
 								"ctt" => "leu", "cct" => "pro", "cat" => "his", "cgt" => "arg",
 								"ctc" => "leu", "ccc" => "pro", "cac" => "his", "cgc" => "arg",
 								"cta" => "leu", "cca" => "pro", "caa" => "gln", "cga" => "arg",
 								"ctg" => "leu", "ccg" => "pro", "cag" => "gln", "cgg" => "arg",
 								"att" => "ile", "act" => "tre", "aat" => "asn", "agt" => "ser",
 								"atc" => "ile", "acc" => "tre", "aac" => "asn", "agc" => "ser",
 								"ata" => "ile", "aca" => "tre", "aaa" => "lis", "aga" => "arg",
 								"atg" => "met", "acg" => "tre", "aag" => "lis", "agg" => "arg",
 								"gtt" => "val", "gct" => "ala", "gat" => "asp", "ggt" => "gli",
 								"gtc" => "val", "gcc" => "ala", "gac" => "asp", "ggc" => "gli",
 								"gta" => "val", "gca" => "ala", "gaa" => "glu", "gga" => "gli",
 								"gtg" => "val", "gcg" => "ala", "gag" => "glu", "ggg" => "gli");

print "Informe a primeira trinca:";
$trinca1 = lc <STDIN>;
chomp($trinca1);
print "Informe a segunda trinca:";
$trinca2 = lc <STDIN>;
chomp($trinca2);

$proteina1 = $codegenetico{$trinca1};
$proteina2 = $codegenetico{$trinca2};

if ($proteina1 eq $proteina2) {
    print uc$trinca1."->".uc$proteina1."\n";
    print uc$trinca2."->".uc$proteina2."\n";
    print "Mutação Sinônima\n";
}else{
  print uc$trinca1."->".uc$proteina1."\n";
  print uc$trinca2."->".uc$proteina2."\n";
  print "Mutação Não Sinônima\n";
}
