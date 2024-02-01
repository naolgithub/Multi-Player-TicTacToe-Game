//importing modules
const express=require('express');
const http=require('http');
const app=express();
//process.env.PORT this is the port that deploying site gives us.
const port=process.env.PORT|| 3000;
var server=http.createServer(app)
var io=require("socket.io")(server)
//middleware
//client--> middleware-->server
app.use(express.json());
server.listen(port,'0.0.0.0',()=>{
console.log(`Server started and running on port ${port}`);
});
