import express from "express"
import cors from "cors"

import { rotaUser } from "./routes/user.rota.js"
import {rotaProduct} from './routes/product.rota.js'

const app = express()
app.use(express.json())
app.use(cors())
app.use("/user", rotaUser)
app.use('/product',rotaProduct)

app.listen(3000, () => console.log("Servidor funcionando"))