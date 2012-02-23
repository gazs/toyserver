#!/usr/bin/env coffee
express = require 'express'


app = express.createServer()

app.configure ->
  app.use express.compiler
    enable: ['coffeescript']
  app.use express.directory process.cwd()
  app.use express.static process.cwd()

app.listen process.env.PORT || 3000
