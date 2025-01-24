import { conexao } from '../conexao.js'

export async function getUsuarioModel(dados) {
    try {
        const [results, fields] = await conexao.query(`select * from usuario where login = '${dados.email}'`)
        return results;
        console.log("feito")
    } catch (err) {
        console.log(err)
    }
}