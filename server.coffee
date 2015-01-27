connect = require 'connect'
serveStatic = require 'serve-static'
console.log("Going to listen on port 3000...")
connect().use(serveStatic 'public').listen 3000
