import { getUsuarioModel} from "../models/user.model.js"

export async function login(req, res) {
    console.log("chegou no controller")
    const dados = req.body
    console.log(dados)
    const user = await getUsuarioModel(dados)
    if (user.length == 0) {
        return res.status(404).json({ erro: 'email inválido' })
    }
    return res.status(200).json(user[0])
}