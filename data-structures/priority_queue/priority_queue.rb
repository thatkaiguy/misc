class PriorityQueue

  attr_reader :items

  def initialize
    # first item is placed at index 1
    # min heap implementation
    @items = [nil]
  end

  def size
    @items.size - 1
  end

  def parent_index(n)
    return nil if n == 1 || n > self.size

    n / 2
  end

  def young_child_index(n)
    2 * n
  end

  def parent_node(n)
    return nil if parent_index(n).nil?

    @items[parent_index(n)]
  end

  def left_child_node(n)
    @items[young_child_index(n)]
  end

  def right_child_node(n)
    @items[young_child_index(n) + 1]
  end

  def bubble_up(n)
    return if self.parent_index(n).nil?

    if parent_node(n) > @items[n]
      swap(parent_index(n), n)
      bubble_up(parent_index(n))
    end
  end

  def swap(i, j)
    @items[i], @items[j] = @items[j], @items[i]
  end

  def insert(item)
    @items << item
    self.bubble_up(self.size - 1)
  end

  def bubble_down(n)
    return if n < 1 || n > self.size - 1

    left_child = left_child_node(n)
    right_child = right_child_node(n)
    min_idx = n

    if (left_child && @items[min_idx] > left_child)
      min_idx = young_child_index(n)
    end

    if (right_child && @items[min_idx] > right_child)
      min_idx = young_child_index(n) + 1
    end

    if min_idx != n
      self.swap(n, min_idx)
      self.bubble_down(min_idx)
    end
  end

  def extract_min
    min = nil

    if self.size > 1
      min = @items[1]
      if self.size == 2
        @items.pop
      else
        @items[1] = @items.pop
        self.bubble_down(1)
      end
    end

    min
  end
end
