module SortingSuite
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
  end

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
      return merged_array(left_values, right_values)
    end

    def merged_array(left_values, right_values, sorted_values=[])
      count = left_values.count + right_values.count
      loop_through_values_and_merge(left_values, right_values, count, sorted_values)
      sorted_values
    end

    def loop_through_values_and_merge(left_values, right_values, n, sorted_values)
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

  class Benchmark
  end
end

if __FILE__ == $0

end
