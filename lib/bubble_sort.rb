require 'pry'

class BubbleSort

  def sort(unsorted_array=[])
    return unsorted_array if unsorted_array.count < 2
    swap_count = -1
    current_element = unsorted_array[0]
    next_element    = unsorted_array[1]
    unsorted_array_count = unsorted_array.count
    count = 1
    # binding.pry
    until swap_count == 0 || next_element.nil?
      swap_count = 0
      if current_element > next_element
        current_element_index = unsorted_array.index(current_element)
        next_element_index = unsorted_array.index(next_element)
        unsorted_array[current_element_index]     = next_element
        unsorted_array[next_element_index]        = current_element
        current_element = next_element
        next_element = unsorted_array[next_element_index + 1]
        swap_count += 1
      end
    end
    unsorted_array
  end

end
