# B2Rise Challenge

Este projeto consiste em uma aplicação Node.js com TypeScript e um banco de dados PostgreSQL, configurado para executar scripts SQL e desafios específicos.

## Pré-requisitos

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Node.js](https://nodejs.org/) (opcional para desenvolvimento local)
- [npm](https://www.npmjs.com/) ou [Yarn](https://yarnpkg.com/)

## Configuração do Ambiente

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/CaioVGA/b2rise-challenge.git
   cd b2rise-challenge
   ```

## Executando o projeto com Docker

### 1. Construa e inicie os containers
```bash
docker-compose up --build
```
Para inicializar em background:
```
docker-compose up --build -d
```

---

### 2. Inicialize o banco de dados
Após o container do PostgreSQL iniciar, as tabelas serão criadas automaticamente. Para verificar:
```bash
docker-compose up db
```
Para inicializar em background:
```
docker-compose up db -d
```

---

### 3. Instale Dependências
Se precisar adicionar novas dependências:
1. Atualize o `package.json`.
2. Reconstrua a imagem:
   ```bash
   npm install
   ```

---

### 4. Execute os Scripts da Aplicação
Para executar um script específico (ex: `challenge1.1`):
```bash
npm run challenge1.1
```

---

## Comandos Úteis

| Descrição                                  | Comando                               |
|-------------------------------------------|---------------------------------------|
| Parar os containers                       | `docker-compose down`                 |
| Remover volumes e containers              | `docker-compose down -v`              |
| Acessar o banco de dados via `psql`       | `docker-compose exec db psql -U postgres -d b2rise_challenge_db` |
| Ver logs do PostgreSQL                    | `docker-compose logs db`              |
| Ver logs da aplicação Node.js             | `docker-compose logs app`             |

---

## Estrutura do Projeto
```
b2rise-challenge/
├── src/
│   ├── step1/
│   │   ├── extractProperty.ts
│   │   ├── mathOperations.ts
│   │   └── arrayManipulation.ts
│   ├── step2/
│   │   ├── create_tables.sql
│   │   └── queries.sql
│   └── step3/
│       ├── cleanCodeTest.ts
│       ├── refactoringComplexCode.ts
│       └── refactoringCode.ts
├── .env
├── docker-compose.yml
├── Dockerfile
├── package.json
└── wait-for-postgres.sh
```

---

## Notas

- **Docker Networking**: A aplicação Node.js se conecta ao PostgreSQL via host `db` (nome do serviço no docker-compose).
- **Variáveis de Ambiente**: As credenciais do PostgreSQL são definidas no `.env` (disponibilizado nesse desafio por não tratar-se de dados sensíveis).
- **PostgreSQL**: A imagem usa a versão `postgres:13-alpine/`