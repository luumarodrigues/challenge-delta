# Delta

O projeto consiste em uma API implementada com Node.js​ + MySQL​ para criação e consulta de pacotes

- Criação das imagens docker (mysql,nginx,nodejs) configuradas de acordo com a necessida do projeto
- Criação do docker-compose para subir o ambiente
- Criação do diagrama da infraestrutura do projeto
- Correção do database_schema.sql
- Automatização do processo de build e deploy com docker-compose
- Automatização do processo de criação, exclusão e listagem de pacotes.


## Diagrama - Infraestrutura
<p align="center">
  <img src="Diagrama.jpg" alt="Diagrama" />
</p>

## Pré-requisitos:
-  Ter o git instalado
-  Ter docker instalado
-  Ter docker-compose instalado

## Executar build e deploy:

- Clone o repositório do projeto
```
$ git clone https://github.com/luumarodrigues/challenge-delta.git
```

- Execute o script start.sh para fazer deploy da aplicação

```
$ sh start.sh
```

## Gerenciar pacotes

### Caso queira testar o gerenciamento dos pacotes de forma automatizada, execute:

```
$ sh requests.sh
```

### Comandos para gerenciar os pacotes de forma manual

-  Listar pacotes:

```
$ curl --request GET --url http://localhost/packages
```
- Criar pacotes:

```
$ curl --request POST --url http://localhost/packages --header 'Content-type: text/plain' --data "Pacote teste"
```
-  Deletar pacotes:
- obs: Passe o id do pacote que dejesa deletar.

```
$ curl --request DELETE --url "http://localhost/packages/id"
```
