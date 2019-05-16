def my_select(arr)
  if block_given?
    i =0
    new_arr = []
    while i <arr.length
      # p yield(arr[i]) ==> puts the boolean value. Enable this to see how each item in the list evaluated when subjected to the block. 
      
      #ex. nums = [1,2,3]
      #my_select(nums) {|num| num > 2}
      
      #nums[0] = 1 ==> 1 is not greater than 3 ==> false 
      #(p yield[1,2,3][0]) p's false to console 
      if yield(arr[i]) == true
        new_arr << arr[i]
      end
      i += 1
    end
  end
  new_arr
end

# [1,2,3,4].select { |num| num.even?} # => [2,4]
