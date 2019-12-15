#!/bin/bash

# Titulo: Backup Servidor de Arquivos

# Descrição: Script simples que realizar um 
# backup da pasta compartilhada pelo Samba


#####################################################################


# Declaração das variáveis utilizados no script.


#####################################################################

# Diretório que será salvo no backup.
pasta_backup="/home/matheus/Documentos/arquivos"

# Destino do arquivo de backup.
destino_backup="/media/suporte/KINGSTON_BACKUP"

# Variável que captura um comando que retorna a data atual.
data=$(date +%d-%m-%y)

# Nome que o arquivo de backup receberá.
nome_arquivo="backup_servidor_$data.tar.gz"

#####################################################################


# Seção de execução do backup.


#####################################################################

# Comando para compactar o diretório

tar -zcvf $destino_backup/$nome_arquivo $pasta_backup > log_backup.txt 2>&1

# Comando para forçar a saída do script. Desnecessário, mas não custa nada! 

exit









