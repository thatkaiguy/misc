function quicksort(arr) {
  arr = arr || [];
  return partition(arr, 0, arr.length - 1);
}

function partition(arr, leftIdx, rightIdx) {
  if (leftIdx == null || rightIdx == null) throw new Error('invalid indices');
  // leftIdx is equal to or greater than rightIdx
  // could be incorrect input or partition should stop recursing
  if ( !(leftIdx < rightIdx) ) return arr;

  // move pivot to start
  swap(leftIdx, getPivotIdx(leftIdx, rightIdx));
  var pivotEl = arr[ leftIdx ];
  var splitIdx = leftIdx;
  var currIdx = splitIdx + 1;

  while ( currIdx <= rightIdx ) {
    if ( arr[ currIdx ] <= pivotEl ) {
      // splitIdx is last idx where element is less than or equal to pivot
      swap(arr, currIdx, splitIdx++);
    }
    currIdx++;
  }
  // move pivot to correct position
  swap(leftIdx, splitIdx);
  // partition left side
  partition(arr, leftIdx, splitIdx - 1);
  // paritition right side
  partition(arr, splitIdx + 1, rightIdx);
  return arr;
}

function swap(arr, idx1, idx2) {
  var tmp = arr[ idx2 ];
  arr[idx2] = arr[ idx1 ];
  arr[idx1] = tmp;
  return arr;
}

function getPivotIdx(leftIdx, rightIdx) {
  if ( rightIdx < leftIdx ) throw new Error('invalid indices');
  return Math.floor( Math.random() * (rightIdx - leftIdx + 1) + leftIdx );
}
// console.log( quicksort( [5, 2, 7, 3, 9, 9, 10] ) );
module.exports = quicksort;
