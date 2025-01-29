import { conexao } from "../conexao.js"

export async function getStateModel() {
    try {
        const query = `select * from estado`
        const [results] = await conexao.query(query)
        return results
    } catch (err) {
        throw err
    }
}
export async function getCityModel(dados) {
    try {
        const query = `SELECT * FROM municipio WHERE id_estado = ${dados.stateId}`
        const [results] = await conexao.query(query)
        return results
    } catch (err) {
        throw err
    }
}
export async function getHoodModel(dados) {
    try{
        const query = `SELECT * FROM bairro WHERE id_municipio = ${dados.cityId}`
        const [results] = await conexao.query(query)
        return results
    } catch (err) {
        throw err
    }
}