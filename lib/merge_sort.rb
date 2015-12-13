require 'pry'

class MergeSort

  def sort(values=[])
    return "Give me an Array fool!" unless values.is_a?(Array)
    return values if values[1] == nil

    values = split_values(values)

    values
  end

  def split_values(values)
    split = values.count / 2.0
    if split < 1.0
      return values
    elsif split == 1.0
      left_values = values[0]
      right_values = values[1]
      return compare_values(left_values, right_values)
    else
      left_values  = values.slice!(0..split)
      right_values = values.slice!(0..-1)
    end

    if left_values.is_a?(Array)
      return_value_left = split_values(left_values)
    end
    if right_values.is_a?(Array)
      return_value_right = split_values(right_values)
    end
    return_value_left
    return_value_right

    return_value_right.each do |value|
      0.upto(return_value_left.count - 1) do |n|
        if value < return_value_left[n]
          return_value_left.insert(n, value)
          break
        end
      end
      return_value_left << value unless return_value_left.include?(value)
    end

    return_value_left
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
