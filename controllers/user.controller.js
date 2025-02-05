import { getUsuarioModel, postClientModel, postPaymentModel, postUserModel, postItemModel, postBarCode, postPromotion } from "../models/user.model.js"

export async function login(req, res) {
    const dados = req.body
    const user = await getUsuarioModel(dados)
    if (user.length == 0) {
        return res.status(404).json({ erro: 'email inválido' })
    }
    return res.status(200).json(user[0])
}
export async function register(req, res) {
    const dados = req.body

    const client = await postClientModel(dados)
    if (client.length == 0) {
        return res.status(404).json({ erro: 'erro no cadastro' })
    }
    return res.status(200).json(client[0])   
}
export async function payment(req, res) {
    const dados = req.body
    const pay = await postPaymentModel(dados)
    if (pay.length == 0) {
        return res.status(404).json({ erro: 'erro na criação do pagamento' })
    }
    return res.status(200).json(pay[0])
}
export async function client(req, res) {
    const dados = req.body
    const createClient = await postUserModel(dados)
    if (createClient.length == 0) {
        return res.status(404).json({ erro: 'erro na criação do usuário' })
    }
    return res.status(200).json(createClient[0])
}
export async function item(req, res) {
    const dados = req.body
    const createItem = await postItemModel(dados)
    if (createItem.lenght == 0) {
        return res.status(404).json({ erro: 'erro na criação do item' })
    }
    return res.status(200).json(createItem[0])
}
export async function barcode(req, res) {
    const dados = req.body
    const createBarCode = await postBarCode(dados)
    if (createBarCode.lenght == 0) {
        return res.status(404).json({ erro: 'erro na criação do código de barras' })
    }
    return res.status(200).json(createBarCode)
}
export async function promotion(req, res) {
    const dados = req.body
    const createPromotion = await postPromotion(dados)
    if (createPromotion.lenght == 0) {
        return res.status(404).json({ erro: 'erro na criação da promoção' })
    }
    return res.status(200).json(createPromotion)
}