class PriorityQueue

  def initialize
    # first item is placed at index 1
    @items = []
  end

  def size
    @items.size
  end

  def parent_index(n)
    return -1 if n == 1

    n / 2
  end

  def young_child_index(n)
    2 * n
  end
end
