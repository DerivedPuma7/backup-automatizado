# Sistemas Operacionais
## Atividade 2 - Backup automatizado

### Instruções:

> 1: Navegue até o diretório do arquivo

> 2: Garanta que o arquivo backup.sh possa ser executado pelo sistema operacional
```console
$ chmod +x backup.sh
```

> 3: Execute o arquivo
>> Esse script espera que dois diretórios sejam passados por parâmetro
```console
$ ./backup.sh ./origem/ ./destino/
```

### Automatizar backup com cron tab:
> 1: Edite o crontab
```console
$ crontab -e
```

> 1: Adicione uma nova rotina com a frequência necessária
>> Insira o comando a ser executado como se estivesse em qualquer terminal, só que sob a perspectiva de diretórios que o SO usa (parta da raiz)
>> No exemplo a seguir, ele executa o arquivo backup.sh 1x ao dia, às 2 horas da manhã
0 2 * * * /home/.../backup.sh /home/.../origem/ /home/.../destino/ >> /home/.../logs/backup.log 2>&1