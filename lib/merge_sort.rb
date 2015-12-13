require 'pry'

class MergeSort

  def sort(values=[])
    return "Give me an Array fool!" unless values.is_a?(Array)
    return values if values[1] == nil
    # split the array into its individual elements
    # split = values.count / 2 - 1
    # left_values  = values.slice(0..split)
    # right_values = values
    if values.count < 3
      left_value  = values[0]
      right_value = values[1]
    end
    # compare elements and put them back into an array in proper order
    if left_value > right_value
      values = [right_value, left_value]
    end
    values
  end
end

if __FILE__ == $0
  sorter = MergeSort.new
  sorter.sort([2, 1])
end
