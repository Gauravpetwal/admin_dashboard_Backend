const pendingTaskEmail = require('./pendingTaskEmail')
const {backupDatabase} = require('./backupDatabase')
const codeZip = require('./codezip')
const cron = require('node-cron')
const jobs =[ 
    pendingTaskEmail, backupDatabase,codeZip
]
jobs.map((cronJobs) => cron.schedule('0 12 * * *',cronJobs))




