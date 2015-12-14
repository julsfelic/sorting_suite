require 'pry'

class MergeSort

  def sort(values=[])
    return "Give me an Array fool!" unless values.is_a?(Array)
    return values if values[1] == nil
    sort_values(values)
  end

  def sort_values(values)
    return values if values.count == 1
    split = ((values.count / 2.0) - 1.0).round
    if values.count == 2
      return compare_values(values[0], values[1])
    else
      left_values  = sort_values(values.slice!(0..split))
      right_values = sort_values(values.slice!(0..-1))
    end
    return combined_values(left_values, right_values)
  end

  def combined_values(left_values, right_values, sorted_values=[])
    count = left_values.count + right_values.count
    loop_through_values_and_combine(left_values, right_values, count, sorted_values)
    sorted_values
  end

  def loop_through_values_and_combine(left_values, right_values, n, sorted_values)
    n.times do
      next sorted_values << left_values.shift if right_values[0].nil?
      next sorted_values << right_values.shift if left_values[0].nil?
      if left_values[0] < right_values[0]
        sorted_values << left_values.shift
      else
        sorted_values << right_values.shift
      end
    end
  end

  def compare_values(left_value, right_value)
    if left_value < right_value
      [left_value, right_value]
    else
      [right_value, left_value]
    end
  end
end

if __FILE__ == $0
  sorter = MergeSort.new
  sorter.sort([2, 1, 3])
end
