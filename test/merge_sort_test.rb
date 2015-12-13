require 'minitest'
require 'merge_sort'

class MergeSortTest < Minitest::Test
  def test_can_create_instances
    sorter = MergeSort.new

    assert_instance_of MergeSort, sorter
  end
end
