import mysql from 'mysql2/promise'
export const conexao  = await mysql.createConnection({
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: '',
    database: 'frente_caixa'
})

console.log('fim');