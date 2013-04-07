https = require('https')
request = require('request')

exports.get = (req, res) ->
  request 'https://www.coursera.org/maestro/api/topic/list_my?user_id=' + process.env.COURSERAID, (error, response, body) ->
    if !error and response.statusCode is 200
      res.json body
