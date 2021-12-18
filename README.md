# DesafioDevCrossCommerce

O projeto trata-se de uma api que baixa uma série de números de uma API fornecida, ordena-os de forma crescente e os apresenta ao usuário.

### 📋 Pré-requisitos
Para executar o projeto, precisa-se que tenha instalado:

- Erlang 24 ou acima
- Elixir 1.12 ou acima
- Framework Phoenix v1.6.2

### 🔧 Instalação do projeto
- Baixar o projeto do Github:
`
    git clone https://github.com/wagncarv/spaceflightnewsapi
`
- Baixar as dependências:
Dentro da pasta do projeto executar:
`
    mix deps.get
`
- Configurar o banco de dados:
Em `config\dev.ex` inserir os dados de:
#### Configuração
- username: "username",
- password: "password",
- database: "database_name",
- hostname: "localhost"

- Após a configuração, na pasta do projeto, executar o comando:
`mix ecto.setup`

- Iniciar modo interativo do Elixir:
`iex -S mix`

- Para executar o projeto, inserir o comando
`mix phx.server`


## 🌐 Requisições à API
GET http://localhost:4000/api/numbers


## ⚙️🔩  Executando os testes

Para executar os testes, inserir o comando
`mix test`

* **Desenvolvedor** [Wagner Patrick de Carvalho](https://github.com/wagncarv)

### 🎁 Expressão de gratidão
Agradecimento à Cross Commerce Strore por esta oportunidade de participar deste processo de seleção. 📢
> This is a challenge by [Coodesh](https://coodesh.com/)

⌨️ Por [Wagner Patrick de Carvalho](https://github.com/wagncarv) 😊# cross_commerce_challenge
