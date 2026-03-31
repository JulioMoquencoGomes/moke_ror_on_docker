## Projeto Ruby on Rails via Docker

Comando para montarmos um docker compose com os containers de Rails, PostgreSQL e Redis:

**docker-compose build**

Comando para executar os containers:

**docker-compose up**

Execute esses comandos no terminal pra finalizar o processo da criação do banco e geração da estrutura  de testes do RSpec:

**docker exec -it moke_ror_on_docker-web-1 bash**

**rails db:create**

**rails generate rspec:install**

**rails db:migrate db:test:prepare**

Comando para executar os testes automatizados do RSpec(dentro do container moke_ror_on_docker-web-1):

**rspec**

Como executar o projeto no browser(abra este link): **http://localhost:3000**