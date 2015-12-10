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
end
