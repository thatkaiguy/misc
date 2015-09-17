# Write a method to rotate an NxN matrix by 90 degrees.

def rotate_matrix(sq_matrix)
  dim = sq_matrix.size
  result_matrix = Array.new(dim) { Array.new(dim) }

  dim.times do |i|
    dim.times do |j|
      result_matrix[i][j] = sq_matrix[j][i]
    end
  end

  result_matrix.map! do |row|
    row.reverse!
  end

  result_matrix
end

# p rotate_matrix([[1, 2], [3, 4]])
