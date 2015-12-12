require 'pry'

class InsertionSort
  attr_reader :sorted

  def initialize
    @sorted = []
  end

  def sort(values=[])
    return "Give me an Array fool!" unless values.is_a?(Array)
    if values[1] == nil
      return values
    end
    # pull out the first value from the unsorted array
    first_value = values.shift
    # place that value into the sorted array
    sorted << first_value
    # pull out the second value from the unsorted array
    second_value = values.shift
    # compare that value to the first value in the sorted array
    if second_value < sorted[0]
      sorted.insert(0, second_value)
    else
      sorted << second_value
    end
    # if unsorted array is empty, return sorted array
    sorted
  end
end

if __FILE__ == $0
  sorter = InsertionSort.new
  sorter.sort([2, 1])
end
