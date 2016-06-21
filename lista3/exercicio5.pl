#!/usr/bin/perl
my $DNA;
my $query;
my $tamanhoDNA;
my $tamanhoQuery;
my $queryDna;
my $contador = 0;
my $match = 0; #Variavel de controle
my @lista; #armazena os indices de ocorrencia da query

#pre-processamento
#Entrada dos dados
#Laço para garantir que a 2a sequencia não seja maior que a 1a sequencia.
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

#loop para encontrar a ocorrencia da 2a sequencia na 1a sequencia
do{
      $queryDna = substr($DNA, $contador, $tamanhoQuery); #cria uma substring diferente a cada iteração
                                                          #a partir do $DNA

      if($query eq $queryDna) # comparação das sequencias
      {
        $match = 1;
        push(@lista, $contador); #adiciona a cada match o indice de ocorrencia.
      }

      $contador++; #iterando

}while($contador <= ($tamanhoDNA - $tamanhoQuery)); #condição de saida do loop

#saida. Se FOUND entao mostra tbm os indices de ocorrencia da query na sequencia $DNA.
if($match == 1){
    print "FOUND\n";
    foreach my $x (@lista) {
      print $x."\t"
    }

}else{
   print "DONT FOUND\n";
}
print "\n";
