require 'pry'

class BubbleSort
  def sort(values=[])
    return "Give me an Array fool!" unless values.is_a?(Array)
    swap_value = -1
    how_many_swap_checks = values.count - 2
    until swap_value == 0
      swap_value = 0
      0.upto(how_many_swap_checks) do |n|
        previous = values[n]
        current = values[n + 1]
        if previous > current
          values[n] = current
          values[n + 1] = previous
          swap_value += 1
        end
      end
    end
    values
  end
end

if __FILE__ == $0
  sorter = BubbleSort.new
  sorter.sort([4, 1, 3, 2])
end
