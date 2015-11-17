def create_row(matrix, m_index, r_index, degrees)
    row = []
    column_index.times do
      row.push(matrix[m_index][r_index])
      degrees == 90 ? ? m_index -= 1 : m_index += 1
      end
    end
    return row
end

#matrix rotates to the right always
def rotate_matrix(n, matrix, degrees)
  #receiving a matrix n x n
  n = gets.to_i
  n1 = n[0]
  n2 = n[1]

  matrix = gets
  #puts matrix

  case degrees

  when 90
  new_matrix = []
    (0...n1).each { |i| new_matrix.push(create_row(matrix, n2-1, i)) }
    end
  when 270
    (0...n1).each { |i| new_matrix.push(create_row(matrix, i, n1-1)) }
  when 180
    row = []
    index = n2
    n2.times do
      n2.times do
        index -=1
        row.push(matrix[index].reverse)
      end
      new_matrix.push(row)
    end
  when 360
    new_matrix = matrix
  else
    "I only rotate on 90, 180, 270 and 360 degress"


  end

  new_matrix

end
