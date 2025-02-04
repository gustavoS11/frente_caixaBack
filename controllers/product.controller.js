import { getCityModel, getHoodModel, getStateModel, getPaymentTypeModel, getClientsModel, getProductsModel, getProductById} from "../models/product.model.js"

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
export async function getAllPayment(req, res) {
    const payment = await getPaymentTypeModel()
    if (payment.lenght == 0) {
        return res.status(404).json({ erro: 'erro na requisição dos pagamentos' })
    }
    return res.status(200).json(payment)
}
export async function getClients(req, res) {
    const client = await getClientsModel()
    if (client.lenght == 0) {
        return res.status(404).json({ erro: 'erro na requisição dos clientes' })
    }
    return res.status(200).json(client)
}
export async function getProducts(req, res) {
    const product = await getProductsModel()
    if (product.lenght == 0) {
        return res.status(404).json({ erro: 'erro na requisição dos produtos' })
    }
    return res.status(200).json(product)
}
export async function getProductValue(req, res) {
    const dados = req.body
    const value = await getProductById(dados)
    if (value.lenght == 0) {
        return res.status(404).json({ erro: 'erro na requisição do valor do produto' })
    }
    return res.status(200).json(value[0])
}