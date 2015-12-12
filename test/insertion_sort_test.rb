require 'minitest'
require 'insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_can_create_instances
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end
end
