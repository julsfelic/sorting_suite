require 'pry'

class BubbleSort
  attr_reader :swap_value

  def initialize
    @swap_value = -1
  end

  def sort(values=[])
    return "Give me an Array fool!" unless values.is_a?(Array)
    amount_of_swap_checks = values.count - 2
    until swap_value == 0
      sort_values(values, amount_of_swap_checks)
    end
    values
  end
end

def sort_values(values, amount_of_swap_checks)
  @swap_value = 0
  0.upto(amount_of_swap_checks) do |n|
    previous = values[n]
    current = values[n + 1]
    if previous > current
      values[n] = current
      values[n + 1] = previous
      @swap_value += 1
    end
  end
end

if __FILE__ == $0
  sorter = BubbleSort.new
  p sorter.sort([4, 1, 3, 2])
end
