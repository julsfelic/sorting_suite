require 'minitest'
require 'sorting_suite'

class BenchmarkTest < Minitest::Test
  def setup
    @benchmark = SortingSuite::Benchmark.new
  end

  def test_can_create_instances
    assert_instance_of SortingSuite::Benchmark, @benchmark
  end
end
