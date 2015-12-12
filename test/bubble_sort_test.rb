require 'minitest'
require 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def setup
    @sorter = BubbleSort.new
  end

  def test_can_create_instances
    assert_instance_of BubbleSort, @sorter
  end

  def test_sort_returns_message_if_not_given_an_array
    assert_equal "Give me an Array fool!", @sorter.sort(8)
  end

  def test_sort_returns_empty_arary_if_given_no_argument
    assert_equal [], @sorter.sort
  end

  def test_sort_returns_an_empty_array_if_empty_array_is_passed_in
    assert_equal [], @sorter.sort([])
  end

  def test_sort_returns_sorted_array_of_one_element
    assert_equal [1], @sorter.sort([1])
  end

  def test_sort_returns_sorted_array_of_two_elements
    assert_equal [1, 2], @sorter.sort([2, 1])
  end

  def test_sort_returns_sorted_array_of_three_elements
    assert_equal [1, 2, 3], @sorter.sort([2, 1, 3])
  end

  def test_sort_returns_sorted_array_of_four_elements
    assert_equal [1, 2, 3, 4], @sorter.sort([4, 1, 3, 2])
  end

  def test_sort_returns_sorted_array_of_many_elements
    assert_equal [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], @sorter.sort([2, 4, 1, 3, 9, 7, 8, 0, 5, 6])
  end

  def test_sort_returns_sorted_array_when_given_reversed_array
    assert_equal [1, 2, 3, 4], @sorter.sort([4, 3, 2, 1])
  end

  def test_values_to_compare_gives_us_back_array_with_two_values
    values = [1, 2, 3, 4]
    values_pair = @sorter.values_to_compare(values, 0)

    assert_equal [1, 2], values_pair
  end

  def test_swap_values_properly_switches_values_positions
    values = [2, 1, 3]
    n = 0
    values_pair = @sorter.values_to_compare(values, n)

    @sorter.swap_values(values_pair, values, n)

    assert_equal [1, 2, 3], values
  end
end
