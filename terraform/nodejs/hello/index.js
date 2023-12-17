const express = require('express');
const app = express();

app.get('/api/hello', (req, res) => {
  const name = process.env.NAME || 'World';
  res.send(`Hello ${name}! This is from NodeJs App`);
});

const port = process.env.PORT || 8080;

// Only start the server if not in a test environment
if (process.env.NODE_ENV !== 'test') {
  const server = app.listen(port, () => {
    console.log(`hello: listening on port ${port}`);
  });
}

module.exports = app;
