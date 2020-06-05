def merge_sort(array)
  #base case 
  if array.length < 2 
    return array
  end

  #deepest stack returns the two single values, which are
  #needed for the execution on the merge and are then put to
  #the next call and so forth
  left = merge_sort(array.slice!(0, array.length / 2))
  right = merge_sort(array)

  merge(left, right)

end

def merge(left, right)
  return_array = []

  until left.empty? || right.empty?
    if left[0] <= right[0]
      return_array << left.shift
    else
      return_array << right.shift
    end
  end

  until left.empty?
    return_array << left.shift
  end

  until right.empty?
    return_array << right.shift
  end

  return_array
end

p merge_sort([8,7,6,5])
p merge_sort([1,2,3,6,8,0,10,22,100,44])
p merge_sort([2,3,5,100,214,1234,7316471,12,5,32,1])