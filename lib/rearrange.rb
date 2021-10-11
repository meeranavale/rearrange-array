# Problem Statment: Rearrange the elements in the array
# such that even positioned elements are
# greater than odd positioned elements

# Approach:
# Traverse the array from the second element and
# swap the element with the previous one
# if the condition is not satisfied

# Complexity:
# Time Complexity: O(n)
# Space Complexity: O(1)

def rearrange(arr)
  arr_len = arr.length

  (1..arr_len-1).each do |index|
    # if index is even
    if (index % 2).zero?
      if arr[index] > arr[index - 1]
        arr[index - 1], arr[index] = arr[index], arr[index - 1]
      end
    else  # if index is odd
      if (arr[index] < arr[index - 1])
        arr[index - 1], arr[index] = arr[index] , arr[index - 1]
      end
    end
  end

  arr
end

input = [10, 15, 20, 30, 40, 35]

# Comment out this if you want to pass static input to the script directly
# Accept the input from command line
# input = gets.rstrip.split(' ').map(&:to_i)

p rearrange(input)
