'use strict';
const binary = require('./algorithms/search/binary');

module.exports.binarySearch = async event => {

  const result = binary(parseInt(event.pathParameters.item, 10));
  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        result: result + '',
      },
      null,
      2
    ),
  };

  // Use this code if you don't use the http event with the LAMBDA-PROXY integration
  // return { message: 'Go Serverless v1.0! Your function executed successfully!', event };
};
