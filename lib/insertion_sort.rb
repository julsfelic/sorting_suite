require 'pry'

class InsertionSort
  attr_reader :sorted, :inserted
  alias_method :inserted?, :inserted

  def initialize
    @sorted = []
    @inserted = false
  end

  def sort(values=[])
    return "Give me an Array fool!" unless values.is_a?(Array)
    return values if values[1] == nil
    loop_through_unsorted_values(values)
    sorted
  end

  def loop_through_unsorted_values(values)
    sorted << values.shift if sorted.empty?
    amount_of_values = values.count - 1
    0.upto(amount_of_values) do
      current_value = values.shift
      insert_value(current_value)
      sorted << current_value unless inserted?
      @inserted = false
    end
  end

  def insert_value(value)
    current_sorted_count = sorted.count - 1
    0.upto(current_sorted_count) do |n|
      if value < sorted[n]
        sorted.insert(n, value)
        @inserted = true
        break
      end
    end
  end
end

if __FILE__ == $0
  sorter = InsertionSort.new
  sorter.sort([2, 1, 3])
end
