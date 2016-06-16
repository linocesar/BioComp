#!/usr/bin/perl
my $DNA;
my $query;
my $tamanhoDNA;
my $tamanhoQuery;
my $queryDna;
my $contador = 0;
my $match = 0;
my @lista;
#pre-processamento
#Entrada dos dados
do{
  print "Sua sequencia DNA: \n";
  $DNA = <STDIN>;
  chomp($DNA);
  print "Sua query: \n";
  $query = <STDIN>;
  chomp($query);
  $tamanhoDNA = length $DNA;
  $tamanhoQuery = length $query;

}while($tamanhoQuery > $tamanhoDNA);


do{


      $queryDna = substr($DNA, $contador, $tamanhoQuery);
      print $queryDna."\n";
      #print $contador."\n";
      if($query eq $queryDna){
        $match = 1;
        push(@lista, $contador);
            }

      $contador++;

}while($contador <= ($tamanhoDNA - $tamanhoQuery));


if($match == 1){
    print "FOUND\n";
    foreach my $x (@lista) {
      print $x."\t"
    }

}else{
   print "DONT FOUND\n";
}
print "\n";
