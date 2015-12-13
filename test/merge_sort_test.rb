require 'minitest'
require 'merge_sort'

class MergeSortTest < Minitest::Test
  def setup
    @sorter = MergeSort.new
  end

  def test_can_create_instances
    assert_instance_of MergeSort, @sorter
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
end
