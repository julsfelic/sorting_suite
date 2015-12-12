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
    amount_of_values = values.count - 2

    0.upto(amount_of_values) do
      inserted = false
      sorted << values.shift if sorted.empty?
      current_sorted_count = sorted.count - 1
      value = values.shift
      0.upto(current_sorted_count) do |n|
        if value < sorted[n]
          sorted.insert(n, value)
          inserted = true
        end
      end
      sorted << value unless inserted
    end
    sorted
  end
end

if __FILE__ == $0
  sorter = InsertionSort.new
  sorter.sort([2, 1, 3])
end
