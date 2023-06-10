# Projeto de Bioinformática UFPA

Este projeto de bioinformática contém scripts em Python e Perl para executar várias tarefas comumente realizadas por bioinformatas. Os scripts fornecidos neste repositório são úteis para análise de sequências de DNA, RNA e proteínas, bem como para a manipulação de arquivos no formato FASTA.

## Scripts Disponíveis

- `analyze_sequence.py`: Um script Python para análise de sequências de DNA. Ele calcula a contagem de nucleotídeos, a composição de nucleotídeos, a contagem de palavras-chave e outras métricas relacionadas.

- `translate_sequence.py`: Um script Python para tradução de sequências de DNA em sequências de aminoácidos. Ele utiliza a tabela de código genético para mapear os codons para os aminoácidos correspondentes.

- `reverse_complement.pl`: Um script Perl para obter o complemento reverso de uma sequência de DNA. Ele inverte a sequência e substitui cada base por sua base complementar (A por T, T por A, C por G, G por C).

- `extract_sequences.py`: Um script Python para extrair sequências específicas de um arquivo multi-FASTA com base em um arquivo de texto contendo os identificadores das sequências a serem extraídas.

- `kmer.pl`: Um script Perl para realizar a contagem de k-mers em uma sequência de DNA ou RNA.

- `hamming_distance.pl`: Um script Perl para calcular a distância de Hamming entre duas sequências, ou seja, contando o número de posições
nas quais os símbolos correspondentes nas sequências são diferentes.

- `n50.pl`: Um script Perl para o N50 que é uma medida estatística utilizada na análise de genomas e montagem de sequências, estimando
o tamanho médio das contigs.

## Requisitos

- Python 3.x
- Perl 5.x

Certifique-se de ter os requisitos acima instalados em seu sistema antes de executar os scripts. Além disso, é necessário ter acesso aos arquivos de entrada corretos, como arquivos FASTA e arquivos de texto contendo informações relevantes.

## Como Usar

1. Clone este repositório para o seu ambiente local: git clone https://github.com/linocesar/BioComp.git


2. Navegue até o diretório do projeto:


3. Execute os scripts desejados usando o interpretador Python ou Perl:


Certifique-se de fornecer os arquivos de entrada corretos ou ajustar os nomes dos arquivos dentro dos scripts, conforme necessário.

## Contribuindo

Contribuições são bem-vindas! Se você tiver alguma melhoria, correção de bug ou novo script para adicionar, sinta-se à vontade para abrir uma nova issue ou enviar uma solicitação pull.

## Licença

Este projeto é licenciado sob a [MIT License](LICENSE).



