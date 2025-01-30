import { getUsuarioModel, postUserModel, postPaymentModel } from "../models/user.model.js"

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
    const user = await postUserModel(dados)
    if (user.length == 0) {
        return res.status(404).json({ erro: 'email inválido' })
    }
    return res.status(200).json(user[0])
}
export async function payment(req, res) {
    const dados = req.body
    const pay = await postPaymentModel(dados)
    if (pay.length == 0) {
        return res.status(404).json({ erro: 'email inválido' })
    }
    return res.status(200).json(pay[0])
}