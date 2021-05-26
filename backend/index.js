
const express=require('express');
const mysql=require('mysql2');
const bodyparser=require('body-parser');
const cors = require("cors");
const morgan = require("morgan");
const multer = require("multer");


const authRoutes=require('./routes/first');

const errorController=require('./controllers/error');

const app=express();
app.use(cors());
app.use(morgan("combined"));
//app.use('uploads/',express.static('uploads'));
const ports=process.env.PORT||5000;

app.use(bodyparser.json());

app.use((req,res,next)=>{
    res.setHeader('Access-Control-Allow-Origin','*');
    res.setHeader('Access-Control-Allow-Methods','GET,POST,PUT,DELETE');
    res.setHeader('Access-Control-Allow-Headers','Content-Type,Authorization');
    next();

});

app.use('/auth',authRoutes);

app.use(errorController.get404);
app.use(errorController.get500);


// global.__basedir = __dirname;

// const db = require('./config/db.config');

// force: true will drop the table if it already exists
// db.sequelize.sync({force: true}).then(() => {
//   console.log('Drop and Resync with { force: true }');
// });

// require('./routes/first')(app);

app.listen(ports,()=>console.log('server is running'));
