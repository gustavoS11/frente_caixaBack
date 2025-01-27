import { conexao } from "../conexao.js"

export async function getUsuarioModel(dados) {
    try {
        const query = `SELECT * FROM usuario WHERE login = '${dados.email}'`
        const [results] = await conexao.query(query, [dados.body])
        return results
    } catch (err) {
        console.error("Erro ao buscar usuário:", err)
        throw err
    }
}