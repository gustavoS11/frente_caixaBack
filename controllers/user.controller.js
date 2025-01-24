import { getUsuarioModel} from "../models/user.model.js"

export async function login(req, res) {
    const dados = req.body
    const user = await getUsuarioModel(dados)
    if (user.length == 0) {
        return res.status(404).json({ erro: 'email ou senha inválida' })
    }
    return res.status(200).json(user[0])
}