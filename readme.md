# Microsserviço CRUD com Spring Boot e Java 21

![Java](https://img.shields.io/badge/java-21-red.svg)
![Spring Boot](https://img.shields.io/badge/spring%20boot-3.1.5-green.svg)
![PostgreSQL](https://img.shields.io/badge/postgresql-15-blue.svg)
![Docker](https://img.shields.io/badge/docker-compose-yellow.svg)

Um microsserviço completo para gestão de produtos com operações CRUD, construído com Spring Boot 3.1.x e Java 21.
OBS.: Na pasta postman tem o exporte para testar todas as rotas.
## Índice
- [Funcionalidades](#-funcionalidades)
- [Tecnologias](#-tecnologias)
- [Estrutura do Projeto](#-estrutura-do-projeto)
- [Começando](#-começando)
    - [Pré-requisitos](#pré-requisitos)
    - [Instalação](#instalação)
- [Executando a Aplicação](#-executando-a-aplicação)
- [Documentação da API](#-documentação-da-api)
- [Configuração Docker](#-configuração-docker)
- [Testes](#-testes)
- [Licença](#-licença)

## 🚀 Funcionalidades
- Operações CRUD RESTful completas
- Suporte a containerização com Docker
- Integração com banco de dados PostgreSQL
- Lombok para código mais limpo
- Sistema de build Maven
- Pronto para produção

## 🛠️ Tecnologias
- **Java 21** - Ambiente de execução
- **Spring Boot 3.1.5** - Framework de aplicação
- **Spring Data JPA** - Acesso a banco de dados
- **PostgreSQL** - Banco de dados relacional
- **Lombok** - Redução de código boilerplate
- **Docker** - Containerização
- **Maven** - Gerenciamento de dependências

## 📦 Estrutura do Projeto
```text
demo/
├── src/
│   ├── main/
│   │   ├── java/com/example/crudmicroservice/
│   │   │   ├── controller/       # Controladores REST
│   │   │   ├── model/            # Classes de entidade
│   │   │   ├── repository/       # Repositórios JPA
│   │   │   ├── service/          # Lógica de negócio
│   │   │   └── Application.java  # Classe principal
│   │   └── resources/
│   │       ├── application.yml   # Configurações
│   └── test/                     # Classes de teste
├── Dockerfile                    # Configuração Docker
├── docker-compose.yml            # Setup multi-container
├── pom.xml                       # Dependências Maven
└── README.md                     # Este arquivo
```

🏁 Começando
Pré-requisitos
JDK Java 21

Maven 3.8+

Docker (opcional)

PostgreSQL (opcional)

Instalação
Clone o repositório:

```bash
git clone https://github.com/GabrielT31xeira/demo.git
cd demo
```

Construa o projeto:

```bash
mvn clean package
```

🌐 Executando a Aplicação
Opção 1: Execução Local
```bash
mvn spring-boot:run
```

Opção 2: Docker
```bash
docker-compose up --build
```

A aplicação estará disponível em http://localhost:8080

📄 Documentação da API
Endpoints
Método	Endpoint	Descrição
- POST	/api/produtos	Criar novo produto
- GET	/api/produtos	Listar todos produtos
- GET	/api/produtos/{id}	Obter produto específico
- PUT	/api/produtos/{id}	Atualizar produto
- DELETE	/api/produtos/{id}	Remover produto

Exemplos de Requisição
Criar Produto (POST /api/produtos)

```json
{
  "nome": "Mouse Sem Fio",
  "descricao": "Mouse ergonômico sem fio",
  "preco": 59.99
}
```

Atualizar Produto (PUT /api/produtos/1)

```json
{
  "nome": "Mouse Sem Fio Pro",
  "descricao": "Mouse sem fio com botões extras",
  "preco": 79.99
}
```

🐳 Configuração Docker
Construa e inicie os containers:

```bash
docker-compose up --build
```

Acesse a API:

```bash
http://localhost:8080/api/produtos
```

Pare os containers:

```bash
docker-compose down
```

📜 Licença
Este projeto está licenciado sob a MIT License - consulte o arquivo LICENSE para detalhes.
