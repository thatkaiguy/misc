# generate all partitions of a number when given a positive integer

def partitions(n)
  partition(n, n, "")
end

def partition(n, max, prefix)
  if n == 0
    puts prefix
    return
  end

  [n, max].min.downto(1) do |curr_max|
    partition(n - curr_max, curr_max, prefix + " " + curr_max.to_s)
  end
end
