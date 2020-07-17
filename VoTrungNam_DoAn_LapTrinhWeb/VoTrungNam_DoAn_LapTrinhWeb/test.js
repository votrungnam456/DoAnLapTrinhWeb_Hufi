var express = require('express');
var app = express();
let datas
app.get('/', async function (req, res) {

    var sql = require("mssql");

    // config for your database
    var config = {
        user: 'sa',
        password: '123',
        server: 'localhost', 
        database: 'sinhvien' ,
        // options:{
        //     encrypt:false
        // }
    };

    // connect to your database
    await sql.connect(config, async function (err) {
    
        if (err) console.log(err);

        // create Request object
        var request = new sql.Request();
           
        // query to the database and get the records
        await request.query('select * from tblsinhvien', function (err, recordset) {
            
            if (err) console.log(err)

            // send records as a response
            res.send(recordset);
            console.log(recordset)
        });
    });
});

// var server = app.listen(1900, function () {
//     console.log('Server is running..');
// });

// var sql = require("mssql");
// let datas
// // config for your database
// var config = {
//     user: 'sa',
//     password: '123',
//     server: 'localhost', 
//     database: 'sinhvien' ,
//     options:{
//         encrypt:false
//     }
// };

// // connect to your database
// async function connectSQl(){
//     await sql.connect(config, async function (err) {

//         if (err) throw err

//         // create Request object
//         var request = new sql.Request();
       
//     // query to the database and get the records
//     await request.query('select * from tblsinhvien', async function (err, recordset) {
        
//         if (err) console.log(err)

//         // send records as a response
//         // res.send(recordset);

//         // console.log(recordset.recordsets)
//         datas = recordset.recordsets;
//         await console.log(datas)
//         module.exports.data = datas;
//     });
//     console.log(datas)
// });


// }
// connectSQl();

