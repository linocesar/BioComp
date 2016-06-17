#!/usr/bin/perl

my %aluno = (1602030, "Joao", 1602031, "Maria", 1602032, "Pedro" );

print "matricula: \n";
my $matricula = uc<ARGV>;
chomp($matricula);
print "Aluno: ".$aluno{$matricula}."\n";
