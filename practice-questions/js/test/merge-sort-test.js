var mergeSort = require('../merge-sort');
var expect = require('expect');
var underscore = require('underscore');

describe('mergeSort', function() {
  it('should return an empty array when given an empty array', function() {
    expect( mergeSort( [] ).length ).toEqual( 0 );
  });

  it('should sort an array of numbers', function() {
    expect( underscore.isEqual( mergeSort( [5, 4, 3, 2, 1] ), [1, 2, 3, 4, 5] ) ).toBe( true );
  });

  it('should handle an empty input', function() {
    expect( underscore( mergeSort() ).isEqual( [] )).toBe( true );
  })
})
