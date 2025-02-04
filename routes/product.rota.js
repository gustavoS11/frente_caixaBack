import { Router } from 'express'
import { getState, getCity, getHood, getAllPayment, getClients, getProducts, getProductValue } from '../controllers/product.controller.js'

export const rotaProduct = Router()

rotaProduct.get('/states', getState)
rotaProduct.post('/cities', getCity)
rotaProduct.post('/hoods', getHood)
rotaProduct.get('/paymentsType', getAllPayment)
rotaProduct.get('/getClients', getClients)
rotaProduct.get('/getProducts', getProducts)
rotaProduct.post('/getProductValue', getProductValue)