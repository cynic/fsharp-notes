connect = require 'connect'
console.log("Going to listen on port 3000...")
connect().use(connect.static 'public').listen 3000
