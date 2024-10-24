# !/bin/bash

echo "->"
echo "Backup iniciado: $(date)"

if [ "$#" -ne 2 ]; then
  echo "Uso: $0 <diretório_origem> <diretório_backup>\n"
  exit 1
fi

DIR_ORIGEM=$1
DIR_BACKUP=$2

if [ ! -d "$DIR_ORIGEM" ]; then
  echo "Erro: O diretório de origem $DIR_ORIGEM não existe.\n"
  exit 1
fi

if [ ! -d "$DIR_BACKUP" ]; then
  echo "Diretório de backup $DIR_BACKUP não existe.\n"
  exit 1
fi

DATA=$(date +'%Y-%m-%d_%H-%M-%S')
NOME_ARQUIVO="backup_$(basename "$DIR_ORIGEM")_$DATA.zip"

CAMINHO_BACKUP="$DIR_BACKUP/$NOME_ARQUIVO"
zip -r "$CAMINHO_BACKUP" "$DIR_ORIGEM"

if [ $? -eq 0 ]; then
  echo "Backup concluído com sucesso: $CAMINHO_BACKUP\n"
else
  echo "Erro ao criar o backup.\n"
  exit 1
fi
