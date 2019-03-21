class Array
  def my_uniq
    arr = []
    self.each do |el|
      arr << el unless arr.include?(el)
    end 
    arr 
  end

  def two_sum
    arr = []
    i = 0
    while i < self.length 
      j = i + 1
      while j < self.length
        arr << [i, j] if self[i] + self[j] == 0
        j += 1
      end
      i += 1
    end
    arr
  end 
end

def my_transpose(array)
  arr = [] 

  (0...array.length).each do |i|
    sub_arr = []
    (0...array.length).each do |j|
      sub_arr << array[j][i]
    end 
    arr << sub_arr 
  end 
  arr
end 

#prices = [2, 9, 5, 1, 4, 7, 0]
def stock_picker(array)
  indices = nil

  max_difference = 0
  (0...array.length - 1).each do |first_day|
    (first_day + 1...array.length).each do |second_day|
      difference = array[second_day] - array[first_day]
      if difference > max_difference
        indices = [first_day,second_day]
        max_difference = difference
      end
    end
  end
  indices
end


