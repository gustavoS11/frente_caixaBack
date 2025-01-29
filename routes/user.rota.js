import { Router } from 'express'
import { login, register } from '../controllers/user.controller.js'

export const rotaUser = Router()

rotaUser.post('/login', login)
rotaUser.post('/register', register)