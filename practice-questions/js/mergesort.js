// input: array of numbers
// output: the input array sorted from least to greatest

function mergesort(arr) {
  arr = arr || [];
  if (arr.length < 2) return arr;

  var mid = Math.floor( arr.length / 2 );
  var left = mergesort( arr.slice( 0, mid ) );
  var right = mergesort( arr.slice( mid, arr.length ) );

  return merge(left, right);
}

function merge(left, right) {
  var merged = [];

  var leftIdx = 0;
  var rightIdx = 0;

  while ( left.length > 0 && right.length > 0 ) {
    if ( left[ 0 ] < right[ 0 ] ) {
      merged.push( left.shift() );
    } else {
      merged.push( right.shift() );
    }
  }

  if ( left.length > 0 ) merged = merged.concat( left );
  if ( right.length > 0 ) merged = merged.concat( right );

  return merged;
}

// console.log( mergesort( [5, 2, 7, 3, 9, 9, 10] ) );

module.exports = mergesort;
