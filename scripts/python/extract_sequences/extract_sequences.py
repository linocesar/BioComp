def extract_sequences(fasta_file, sequences_file, output_file):
    # Lendo as sequências do arquivo multi-FASTA
    sequences = {}
    with open(fasta_file, 'r') as f:
        header = ''
        sequence = ''
        for line in f:
            line = line.strip()
            if line.startswith('>'):
                if header != '':
                    sequences[header] = sequence
                header = line[1:]
                sequence = ''
            else:
                sequence += line
        if header != '':
            sequences[header] = sequence

    # Lendo os identificadores das sequências a serem extraídas do arquivo de texto
    with open(sequences_file, 'r') as f:
        sequence_ids = set(line.strip() for line in f)

    # Escrevendo as sequências correspondentes no arquivo de saída
    with open(output_file, 'w') as f:
        for sequence_id, sequence in sequences.items():
            if sequence_id in sequence_ids:
                f.write(f'>{sequence_id}\n{sequence}\n')

    print(f'Sequências extraídas com sucesso. Resultados salvos em {output_file}.')


def main():
    import sys
    multi_fasta_file = sys.argv[1]
    sequences_file = sys.argv[2]
    output_file = 'output.fasta'
    extract_sequences(multi_fasta_file, sequences_file, output_file)

if __name__ == '__main__':
    main()