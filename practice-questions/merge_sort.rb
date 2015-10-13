def merge_sort(ary)
  return ary if ary.size < 2

  mid_idx = ary.size / 2
  left = ary.take(mid_idx)
  right = ary.drop(mid_idx)

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  merged = []

  until left.empty? || right.empty?
    if left.first < right.first
      merged << left.shift
    else
      merged << right.shift
    end
  end

  merged.concat(left).concat(right)
end
