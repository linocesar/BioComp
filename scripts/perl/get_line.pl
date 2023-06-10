#!/usr/bin/env perl
# execução: perl get_line.pl <file.csv>
# ou:       perl get_line.pl <file.csv> > resultado.txt

my $filename = $ARGV[0];                        # Arquivo a ser lido
my %data;                                       # Todas as linhas pra cada LINE unico
my %contagem;                                   # Contagem para cada LINE unico
my $contlines = 0;                              # Numero total de LINES no arquivo .csv
my %macaco = ("Aotus" => 0, "Callicebu" => 0, "Callithri" => 0, "Homo" => 0, "Microcebu" => 0,  # Contagem para cada macaco
              "Nomascus" => 0, "Otolemur" => 0, "Pan" => 0, "Papio" => 0, "Saimiri" => 0);

print "Coluna 1 ou 2 para ser analise:?\n";
my $in = <STDIN>;                               #Lendo entrada usuario
my $coluna = $in - 1;                           #Configurando numero da coluna lida

                                                #abre o arquivo para leitura
open(my $arquivo, "<", $filename) or die
"Não foi possível abrir o arquivo '$filename' $!";

                                                #lendo linha por linha
while(my $linha = <$arquivo>){
   chomp($linha);                               # Retira quebra de linha;

   my @aux = split(/\t/, $linha);               # Como cada valor presente na linha lida é separada por uma tabulação, entao
                                                # é necessario a quebra dessa linha onde cada valor presente estará presente na lista @aux.
                                                # Assim os elementos da lista $aux[0] e $aux[1] são as colunas onde aparecem o termo LINE
                                                # que é a expressão de interesse.

                                                # Para analisar a primeira coluna alterar para $aux[0]
                                                # Para analisar a segunda coluna alterar para $aux[1]
   if($aux[$coluna] =~ /LINE/){                 # Se na coluna 0 a apresenta o termo LINE, entao executa os comandos abaixos.

     my $meuline = $aux[$coluna];               # Line é capturado e atribuido a variavel meuline. Este será chave unica pra variavel data.
     $data{$meuline} .= $linha."\n";            # Armazena todas as linhas que corresponde ao termo line especifico.
     $contagem{$meuline}++;                     # Faz contagem de cada line especifico.
     $contlines++;                              # Incrementa o numero total de lines capturados.

     $macaco{"Aotus"} += int $aux[2];           # Incrementa a contagem para cada macaco de acordo com o valor corresponde ao mesmo presente em cada LINE.
     $macaco{"Callicebu"} += int $aux[3];
     $macaco{"Callithri"} += int $aux[4];
     $macaco{"Homo"} += int $aux[5];
     $macaco{"Microcebu"} += int $aux[6];
     $macaco{"Nomascus"} += int $aux[7];
     $macaco{"Otolemur"} += int $aux[8];
     $macaco{"Pan"} += int $aux[9];
     $macaco{"Papio"} += int $aux[10];
     $macaco{"Saimiri"} += int $aux[11];

   }#fim else

   }# fim while

close($arquivo);

foreach my $line (sort keys %data) {            #Imprime de maneira ordenada o resultado para cada line identificada e armazanada no data
  print $data{$line};

}
print "\n";

                                                #Imprime a contagem de cada line identificada e armazenada no hash contagem
print "*********************************** Contagem ***********************************\n\n";

foreach my $line (sort keys %contagem) {
  print $line.": \t".$contagem{$line}."\n";
}

print "Total LINES: \t$contlines\n";              #imprime o total de lines identificadas

print "\n*********************************** Contagem Primatas ***********************************\n\n";

foreach my $m (sort keys %macaco) {               # imprime a contagem para cada macaco
  print $m.":    \t".$macaco{$m}."\n";
}
print "S2\n";
