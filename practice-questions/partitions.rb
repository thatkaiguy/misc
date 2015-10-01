# generate all partitions of a number when given a positive integer

def partitions(n)
  return [[1]] if n == 1

  prev_partitions = partitions(n-1)
  prev_partitions.map! do |el|
    el << 1
  end

  [[n]] + prev_partitions
end
