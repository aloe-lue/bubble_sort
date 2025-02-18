require "pry-byebug"

def swap!(array, i)
  x = array[i - 1]
  y =array[i]

  array[i - 1] = y
  array[i] = x
end

def bubble_sort(list)
  # copy array, avoid destructive method
  new_list = list.collect { |value | value}
  cp_list = new_list
  n = list.size 

  loop do
    # stop the loop when there is no more to loop through
    swapped = false

    for i in 1..n - 1 
      if new_list[i - 1] > new_list[i]
        swap!(cp_list, i)
        # there is more to loop so continue
        swapped = true
      end
    end

    break if swapped == false
  end

  cp_list
end

list = [4, 3, 78, 2, 0, 2]
p bubble_sort(list), list