# DesafioDevCrossCommerce
> This is a challenge by Cross Commerce Store

O projeto trata-se de uma API que baixa uma série de números de uma API fornecida, ordena-os de forma crescente e os apresenta ao usuário. A ordenação é feita por um algoritmo, desenvolvido pelo próprio desenvolvedor, do tipo 'ordenação por bolha' ou 'bubble sort'.

### 📋 Pré-requisitos
Para executar o projeto, precisa-se que tenha instalado:

- Erlang 24 ou acima
- Elixir 1.12 ou acima
- Framework Phoenix v1.6.2

### 🔧 Instalação do projeto
- Baixar o projeto do Github:
`
    git clone https://github.com/wagncarv/cross_commerce_challenge.git
`
- Baixar as dependências:
Dentro da pasta do projeto executar:
`
    mix deps.get
`
- Configurar o banco de dados:
Em `config\dev.ex` inserir os dados de:
#### Configuração
- username: "your_username",
- password: "your_password",
- database: "your_database_name",
- hostname: "localhost"

- Após a configuração, na pasta do projeto, executar o comando:
`mix ecto.setup`

- Para executar o projeto, inserir o comando
`mix phx.server`

## 🌐 Requisições à API
GET http://localhost:4000/api/numbers


## ⚙️🔩  Executando os testes

Para executar os testes, inserir o comando
`mix test`

* **Desenvolvedor** [Wagner Patrick de Carvalho](https://github.com/wagncarv)

### 🎁 Expressão de gratidão
Agradecimento à Cross Commerce Store por esta oportunidade de participar deste processo de seleção. 📢
> This is a challenge by Cross Commerce Store

⌨️ Por [Wagner Patrick de Carvalho](https://github.com/wagncarv) 😊# cross_commerce_challenge
