var quicksort = require('../quicksort');
var expect = require('expect');
var underscore = require('underscore');

describe('quicksort', function() {
  it('should return an empty array when given an empty array', function() {
    expect( quicksort( [] ).length ).toEqual( 0 );
  });

  it('should sort an array of numbers', function() {
    expect( underscore.isEqual( quicksort( [5, 4, 3, 2, 1] ), [1, 2, 3, 4, 5] ) ).toBe( true );
  });

  it('should handle an empty input', function() {
    expect( underscore( quicksort() ).isEqual( [] )).toBe( true );
  })
})
