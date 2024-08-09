const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Finally this is running.......... Hell Yeah!!!!!!!!!!');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});