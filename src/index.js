const express = require('express');
const bodyParser = require('body-parser');
const router = require('./router');

const app = express();

app.use(bodyParser.json());
app.use('/api/v1', router);

app.listen(process.env.PORT);
