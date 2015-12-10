require 'minitest'
require 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_can_create_instances
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end
end
