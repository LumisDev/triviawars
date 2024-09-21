import express from 'express'
import { WebSocketServer } from 'ws'
import path from 'path'

const app = express()

app.use(express.static(path.resolve(process.cwd(), 'public')))

const socket = new WebSocketServer({
    server: app.listen(8080, () => {
        console.log('The game is live!')
    })
})
