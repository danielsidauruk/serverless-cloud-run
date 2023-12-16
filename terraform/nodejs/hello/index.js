const express = require('express');
const app = express();

app.get('/api/hello', (req, res) => {
  const name = process.env.NAME || 'World'
  res.send(`Hello ${name}! This is from NodeJs App`);
});

const port = process.env.PORT || 8080;

app.listen(port, () => {
  console.log(`hello: listening on port ${port}`);
});
