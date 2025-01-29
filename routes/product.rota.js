import { Router } from 'express'
import { getState, getCity, getHood } from '../controllers/product.controller.js'

export const rotaProduct = Router()

rotaProduct.get('/states', getState)
rotaProduct.post('/cities', getCity)
rotaProduct.post('/hoods', getHood)