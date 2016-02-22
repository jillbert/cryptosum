def generate_values
  values = {}

  #shapes = ['circle', 'arrow', 'sun', 'bolt', 'moon', 'cross', 'triangle', 'square', 'heart']

  shapes = list_of_shapes

  shapes.each do |n|
    number = rand(1..9)

    while values.values.include?(number)
      number = rand(1..9)
    end
    values[n] = number
  end
  
  return values 

end

def list_of_shapes
  ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i']
end


def generate_grid_values
  row_1 = []
  row_2 = []
  row_3 = []
  row_4 = []
  col_a = []
  col_b = []
  col_c = []
  col_d = []
  
  shapes = list_of_shapes

  values = generate_values

  while row_1.length < 4
    shape = shapes.sample()
    
    while row_1.include?(shape)
      shape = shapes.sample()
    end

    row_1 << shape 

  end

  col_a << row_1[0]
  col_b << row_1[1]
  col_c << row_1[2]
  col_d << row_1[3]


  while row_2.length < 4
    shape = shapes.sample()

    if row_2.length == 0
      while col_a.include?(shape)
        shape = shapes.sample()
      end

      row_2 << shape

    elsif row_2.length == 1
      while row_2.include?(shape) || col_b.include?(shape)
        shape = shapes.sample()
      end

      row_2 << shape

    elsif row_2.length == 2
      while row_2.include?(shape) || col_c.include?(shape)
        shape = shapes.sample()
      end

      row_2 << shape 

    else
      while row_2.include?(shape) || col_d.include?(shape)
        shape = shapes.sample()
      end

      row_2 << shape
    end

  end

  col_a << row_2[0]
  col_b << row_2[1]
  col_c << row_2[2]
  col_d << row_2[3]

while row_3.length < 4
    shape = shapes.sample()

    if row_3.length == 0
      while col_a.include?(shape) || row_1.include?(shape) && row_2.include?(shape)
        shape = shapes.sample()
      end

      row_3 << shape

    elsif row_3.length == 1
      while row_3.include?(shape) || col_b.include?(shape) || row_1.include?(shape) && row_2.include?(shape)
        shape = shapes.sample()
      end

      row_3 << shape

    elsif row_3.length == 2
      while row_3.include?(shape) || col_c.include?(shape) || row_1.include?(shape) && row_2.include?(shape)
        shape = shapes.sample()
      end

      row_3 << shape 

    else
      while row_3.include?(shape) || col_d.include?(shape) || row_1.include?(shape) && row_2.include?(shape)
        shape = shapes.sample()
      end

      row_3 << shape
    end

  end

  col_a << row_3[0]
  col_b << row_3[1]
  col_c << row_3[2]
  col_d << row_3[3]

  while row_4.length < 4
    shape = shapes.sample()

    if row_4.length == 0
      while col_a.include?(shape) || row_1.include?(shape) && row_2.include?(shape) || row_1.include?(shape) && row_3.include?(shape) || row_2.include?(shape) && row_3.include?(shape)
        shape = shapes.sample()
      end

      row_4 << shape

    elsif row_4.length == 1
      while row_4.include?(shape) || col_b.include?(shape) || row_1.include?(shape) && row_2.include?(shape) || row_1.include?(shape) && row_3.include?(shape) || row_2.include?(shape) && row_3.include?(shape)
        shape = shapes.sample()
      end

      row_4 << shape

    elsif row_4.length == 2
      while row_4.include?(shape) || col_c.include?(shape) || row_1.include?(shape) && row_2.include?(shape) || row_1.include?(shape) && row_3.include?(shape) || row_2.include?(shape) && row_3.include?(shape)
        shape = shapes.sample()
      end

      row_4 << shape 

    else
      while row_4.include?(shape) || col_d.include?(shape) || row_1.include?(shape) && row_2.include?(shape) || row_1.include?(shape) && row_3.include?(shape) || row_2.include?(shape) && row_3.include?(shape)
        shape = shapes.sample()
      end

      row_4 << shape
    end

  end

  col_a << row_4[0]
  col_b << row_4[1]
  col_c << row_4[2]
  col_d << row_4[3]

  sum_row_1 = values[row_1[0]] + values[row_1[1]] + values[row_1[2]] + values[row_1[3]]
  sum_row_2 = values[row_2[0]] + values[row_2[1]] + values[row_2[2]] + values[row_2[3]]
  sum_row_3 = values[row_3[0]] + values[row_3[1]] + values[row_3[2]] + values[row_3[3]]
  sum_row_4 = values[row_4[0]] + values[row_4[1]] + values[row_4[2]] + values[row_4[3]]  

  sum_col_a = values[row_1[0]] + values[row_2[0]] + values[row_3[0]] + values[row_4[0]]
  sum_col_b = values[row_1[1]] + values[row_2[1]] + values[row_3[1]] + values[row_4[1]]
  sum_col_c = values[row_1[2]] + values[row_2[2]] + values[row_3[2]] + values[row_4[2]]
  sum_col_d = values[row_1[3]] + values[row_2[3]] + values[row_3[3]] + values[row_4[3]]  

  puts """

  This is your CRYPTOSUM!

 *---------------*
 | #{row_1[0]} | #{row_1[1]} | #{row_1[2]} | #{row_1[3]} | #{sum_row_1}  
 *---------------*
 | #{row_2[0]} | #{row_2[1]} | #{row_2[2]} | #{row_2[3]} | #{sum_row_2}  
 *---------------*
 | #{row_3[0]} | #{row_3[1]} | #{row_3[2]} | #{row_3[3]} | #{sum_row_3}  
 *---------------*
 | #{row_4[0]} | #{row_4[1]} | #{row_4[2]} | #{row_4[3]} | #{sum_row_4}  
 *---------------*
  #{sum_col_a}  #{sum_col_b}  #{sum_col_c}  #{sum_col_d}   ?





  And these are the answers:
  #{values}
 """
end

generate_grid_values





    
