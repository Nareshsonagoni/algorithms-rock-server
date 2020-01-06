'use strict';
const binary = require('./algorithms/search/binary');

module.exports.binarySearch = async event => {

  const result = binary(parseInt(event.pathParameters.item, 10));
  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        result: `Index of the number ${result + ''}`,
      },
      null,
      2,
    ),
  };
};
