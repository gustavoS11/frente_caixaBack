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
export async function getPaymentTypeModel() {
    try {
        const query = `SELECT * FROM tipo_recebimento`
        const [results] = await conexao.query(query)
        return results
    } catch (err) {
        throw err
    }
}
export async function getClientsModel() {
    try {
        const query = `SELECT * FROM cliente`
        const [results] = await conexao.query(query)
        return results
    } catch (err) {
        throw err
    }
}
export async function getProductsModel() {
    try {
        const query = `SELECT * FROM item`
        const [results] = await conexao.query(query)
        return results
    } catch (err) {
        throw err
    }
}
export async function getProductById(dados) {
    try {
        const query = `SELECT * FROM item WHERE id_item = ${dados.product}`
        const [results] = await conexao.query(query)
        return results
    } catch (err) {
        throw err
    }
}