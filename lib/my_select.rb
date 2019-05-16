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

#so basically we take each broken down again. Use i = 0 to start at index-0 of array, also create new_arr which will have elements that evaluate as true after being subjected to block added to it. That's the whole purpose of the if statement here--all it's saying is that IF the element subjected to the block evaluates as true (ex. element passed is 4, block is |element| > 2, this evaluates to true), add that element to new_arr (in case of said example, 4 is added. If element passed is 1 --> 1 is not greater than 2, evaluates as false, and 1 is not added to new_arr)

# [1,2,3,4].select { |num| num.even?} # => [2,4]
