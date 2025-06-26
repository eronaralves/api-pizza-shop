# Use a imagem oficial do Bun
FROM oven/bun:1.1

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para dentro do container
COPY . .

# Dá permissão para executar o start.sh
RUN chmod +x ./start.sh

# Instala as dependências
RUN bun install

# Expõe a porta que sua aplicação utiliza (ex: 3000)
EXPOSE 3000

# Comando para rodar a aplicação com migração e seed
CMD ["./start.sh"]
