'use strict';

const assert = require('chai').assert;
const binary = require('../algorithms/search/binary');

describe('Binary', function() {
  it('should return the index of the element if found', function() {
    assert.equal(binary(6), 3);
  });

  it('should return null if element not found', function() {
    assert.isNull(binary(10));
  });
});
