def my_select(arr)
  if block_given?
    i =0
    new_arr = []
    while i <arr.length
      p yield(arr[i])
      if yield(arr[i]) == true
        new_arr << arr[i]
      end
      i += 1
    end
  end
  new_arr
end

# [1,2,3,4].select { |num| num.even?} # => [2,4]
