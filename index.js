'use strict';

const express = require('express');
const binary = require('./algorithms/search/binary');
const app = express();

app.get('/api/binary_search/:item/', (req, res) => {
  const item = req.params.item;
  const searchResult = binary(parseInt(item, 10));
  res.send(searchResult + '');
});

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Listening on port ${port}..`));
