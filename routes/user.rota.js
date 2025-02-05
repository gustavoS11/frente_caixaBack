import { Router } from 'express'
import { login, register, payment, client, item, barcode, promotion } from '../controllers/user.controller.js'

export const rotaUser = Router()

rotaUser.post('/login', login)
rotaUser.post('/register', register)
rotaUser.post('/payment', payment)
rotaUser.post('/client', client)
rotaUser.post('/item', item)
rotaUser.post('/barcode', barcode)
rotaUser.post('/insertPromotion', promotion)