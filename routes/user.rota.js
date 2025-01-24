import { Router } from 'express'
import { login } from '../controllers/user.controller.js'

export const rotaUsers = Router()

rotaUsers.post('/login', login)