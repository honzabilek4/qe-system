const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('hey man!');
});
app.listen(process.env.PORT);
