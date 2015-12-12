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
    values_pair = values_to_compare(values, n)
    if values_pair[0] > values_pair[1]
      swap_values(values_pair, values, n)
      @swap_value += 1
    end
  end
end

def values_to_compare(values, n)
  [values[n], values[n + 1]]
end

def swap_values(values_pair, values, n)
  values[n]     = values_pair[1]
  values[n + 1] = values_pair[0]
end

if __FILE__ == $0
  sorter = BubbleSort.new
  p sorter.sort([4, 1, 3, 2])
end
