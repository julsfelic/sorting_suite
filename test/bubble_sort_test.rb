require 'minitest'
require 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def setup
    @sorter = BubbleSort.new
  end

  def test_can_create_instances
    assert_instance_of BubbleSort, @sorter
  end

  def test_sort_returns_an_empty_array_if_nothing_is_passed_in
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

  meta t: true
  def test_sort_returns_sorted_array_of_three_elements
    assert_equal [1, 2, 3], @sorter.sort([2, 1, 3])
  end
end
