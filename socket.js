const socket = (io) => {
  io.on("connection", (socket) => {
    const token = socket.handshake.auth
    console.log('socket token', typeof token)
    if(!token){
      return console.log("unAuthorized")
    }
  
    socket.on('supportmessage',(newmessage) =>{
      console.log(newmessage.ticketid)
      io.emit(newmessage.ticketid, (newmessage))
    })


    //joing user to the task 
    socket.on('JoinRoom',(taskid)=> {
      socket.join(`task${taskid}`)
      console.log(`task${taskid}`)
    })
     

   socket.on('Sendmessage', (message) =>{
     const {taskid} = message
     io.to(`task${taskid}`).emit('newMessage', message); 
     console.log("message reicired", `task${taskid}`) 
   })

    // socket.on("disconnect", () => {
    //   console.log("User disconnected:", socket.id);
    // });
  });
};

module.exports = socket;
