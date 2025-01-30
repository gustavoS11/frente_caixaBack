import { conexao } from "../conexao.js"

export async function getUsuarioModel(dados) {
    try {
        const query = `SELECT * FROM usuario WHERE login = '${dados.email}'`
        const [results] = await conexao.query(query, [dados.body])
        return results
    } catch (err) {
        throw err
    }
}
export async function postUserModel(dados) {
    try {
        const name = dados.name
        const code = dados.code
        const nature = dados.nature
        const cpfCnpj = dados.cpfCnpj
        const rg = dados.rg
        const birth = dados.birth
        const state = dados.state
        const city = dados.city
        const hood = dados.hood
        const road = dados.road
        const houseNumber = dados.houseNumber
        const email = dados.email

        const query = `INSERT INTO cliente (nome_cliente, codigo, natureza, cnpj_cpf, rg, nascimento,id_municipio, inscricao_estadual, bairro, numero, logradouro, email, pacote_preco, ativo) VALUES ('${name}', '${code}', '${nature}', '${cpfCnpj}', '${rg}', '${birth}', '${state}', '${city}', '${hood}', '${road}', '${houseNumber}', '${email}', '0', 'y')`
        const [results] = await conexao.query(query, [dados.body])
        return results
    } catch (err) {
        throw err
    }
}
export async function postPaymentModel(dados) {
    try {
        console.log(dados)
        const query = `INSERT INTO forma_pagamento (id_tipo_recebimento, denominacao, permite_parcelamento, qtd_max_parcelas, ativo, codigo) VALUES ('${dados.tipo}', '${dados.nome}', '${dados.permite}', '${dados.quantidade}', 'y', '${dados.codigo}')`
        const [results] = await conexao.query(query, [dados.body])
        return results
    } catch (err) {
        throw err
    }
}