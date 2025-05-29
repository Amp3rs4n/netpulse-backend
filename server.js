const express = require('express');
const cors = require('cors');
const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());

app.route('/ping')
  .get((req, res) => res.send('pong'))
  .head((req, res) => res.status(200).end());

app.listen(PORT, () => {
  console.log(`Ping server running at http://localhost:${PORT}`);
});
