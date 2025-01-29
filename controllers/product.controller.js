import { getCityModel, getHoodModel, getStateModel} from "../models/product.model.js"

export async function getState(req, res) {
    const state = await getStateModel()
    if (state.length == 0) {
        return res.status(404).json({ erro: 'erro na requisição dos estados'})
    }
    return res.status(200).json(state)
}
export async function getCity(req, res) {
    const dados = req.body
    const city = await getCityModel(dados)
    if (city.length == 0) {
        return res.status(404).json({ erro: 'erro na requisição das cidades' })
    }
    return res.status(200).json(city)
}
export async function getHood(req, res) {
    const dados = req.body
    const hood = await getHoodModel(dados)
    if (hood.length == 0) {
        return res.status(404).json({ erro: 'erro na requisição dos bairros' })
    }
    return res.status(200).json(hood)
}