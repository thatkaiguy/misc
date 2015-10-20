# select the kth smallest integer when given an array of unsorted integers

def k_select(numbers, k)
  pivot_idx = Random.new.rand(numbers.size)
  swap(numbers, 0, pivot_idx)
  pivot_idx = 0

  1.upto(numbers.size - 1) do |idx|
    if numbers[idx] < numbers[pivot_idx]
      swap(numbers, idx, pivot_idx + 1)
      swap(numbers, pivot_idx, pivot_idx + 1)
      pivot_idx += 1
    end
  end

  result = nil
  if pivot_idx + 1 == k
    result = numbers[pivot_idx]
  elsif pivot_idx + 1 > k
    result = k_select(numbers[0...pivot_idx], k)
  else
    result = k_select(numbers[pivot_idx + 1 .. -1], k - (pivot_idx + 1))
  end

  result
end

def swap(ary, idx1, idx2)
  ary[idx1], ary[idx2] = ary[idx2], ary[idx1]
end

p k_select([3, 2, 1, 5, 4], 4)
