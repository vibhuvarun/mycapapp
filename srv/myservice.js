// module.exports = (srv) =>{
//      srv.on('myFunction',(req,res)=>{
//         return "Hello " + req.data.input;
//      })
// }
module.exports = (srv) => {
    srv.on('vibhuvarun', (req) => {
        return "Hello " + req.data.input;
    });
}