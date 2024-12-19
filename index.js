const express= require('express')
const  cookieParser = require('cookie-parser')
const { Server } = require("socket.io");
const {createServer} = require("http");
require('dotenv').config()
const cors = require("cors");
const app = express()
app.set('trust proxy', 1);
app.use(express.json());
app.use(cors({ origin: 'http://localhost:5173', credentials: true}));
const socket = require('./socket')
const {connectdb} = require('./config/database')
const syncmodels = require('./sync/sync')
const api = require('./routes/index')
const port = process.env.PORT||5000
const path = require('path')
app.use(cookieParser());

//cron
const cronJobs= require('./cronJobs/index')

connectdb;
syncmodels()

app.options('*', cors()); 


//all routes
app.use('/api',api)
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

//creating http server
const server = createServer(app)
const io = new Server(server,{cors:{origing:"  http://localhost:5174/"}})
socket(io)
app.set('io',io)

//express server
server.listen(port, () =>{
    console.log(`listing on port ${port}`)
})

