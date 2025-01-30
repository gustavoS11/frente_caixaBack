import { Router } from 'express'
import { login, register, payment } from '../controllers/user.controller.js'

export const rotaUser = Router()

rotaUser.post('/login', login)
rotaUser.post('/register', register)
rotaUser.post('/payment', payment)