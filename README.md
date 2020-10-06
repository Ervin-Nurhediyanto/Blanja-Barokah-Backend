# BlanjaBarokah - BackEnd

Simple application to CRUD database with node js, Express, and MySql.
This application use JWT to authentication and authorization.

## Build with
* [Node.js](https://nodejs.org/en/)
* [Express.js](https://expressjs.com/)

## Requirements
* [Node.js](https://nodejs.org/en/)
* [Postman](https://www.getpostman.com/) for testing
* [Database](./Backup Database/blanja-barokah.sql)

## Project setup

```
npm install
```

### Install nodemon

Nodemon is a tool that helps develop node.js based applications by automatically restarting the node application when file changes in the directory are detected.

If you have already installed, skip this step.

```
npm install -g nodemon
```

### Setup .env example

Create .env file in your root project folder.

```
PORT = 4000
DB_HOST = localhost
DB_USER = root
DB_PASSWORD = your_password
DB_DATABASE = your_database
SECRET_KEY = your_secret_key
BASE_URL = http://localhost:4000/
# For Redirect User When Click Link Reset Password. Just Change The 'localhost:8080'
RESET_URL = http://localhost:8080/reset
# For Send Email To User
MAILER_EMAIL_ID = your_email
MAILER_PASSWORD = your_password
MAILER_SERVICE_PROVIDER = your_provider
```

### Run project for development
```
npm run dev
```

### Run project for deploy
```
npm start
```

## API documentation link

See Documentation (https://documenter.getpostman.com/view/5773671/TVK5cM7E)

## License
[MIT](https://choosealicense.com/licenses/mit/)
