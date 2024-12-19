const { rateLimit } = require('express-rate-limit');
const response = require('../helpers/response')
const siginLimiter = rateLimit({
  windowMs: 5 * 60 * 1000, 
  limit: 10, 
  standardHeaders: true, 
  legacyHeaders: false, 
  handler: (req, res, next) => {
    res.send(response.error('To many attampt. Please try after 5 miniute.'))
}})

const limiter = rateLimit({
    windowMs: 1*60*1000,
    limit:200,
    standardHeaders: true, 
  legacyHeaders: false, 
  handler: (req, res, next) => {
    res.send(response.error('To many attampt. Please try after 5 miniute.'))
  }


})
module.exports = {siginLimiter,limiter};
