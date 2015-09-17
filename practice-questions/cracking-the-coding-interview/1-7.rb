# write an algorithm such that if an element in an MxN matrix is 0, its entire
# row and colum are set to 0

require 'set'

def zero_column(col_idx, ary)
  ary.each do |row|
    row[col_idx] = 0
  end
end

def zero_row(row_idx, ary)
  ary[row_idx].map! { 0 }
end

def set_zero(ary)
  # mutates input 'ary'

  # TODO can use arrays here
  zeroed_rows = Set.new
  zeroed_cols = Set.new

  num_rows = ary.length
  num_cols = ary.first.length

  num_rows.times do |row_idx|
    num_cols.times do |col_idx|
      next if zeroed_cols.include?(col_idx) || zeroed_rows.include?(row_idx)

      if ary[row_idx][col_idx] == 0
        zero_column(col_idx, ary)
        zero_row(row_idx, ary)

        zeroed_rows.add(row_idx)
        zeroed_cols.add(col_idx)
      end
    end
  end

  ary
end


# p set_zero([[0,1],[2,3]])
