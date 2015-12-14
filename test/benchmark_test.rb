require 'minitest'
require 'sorting_suite'

class BenchmarkTest < Minitest::Test
  def test_can_create_instances
    benchmark = SortingSuite::Benchmark.new

    assert_instance_of SortingSuite::Benchmark, benchmark
  end
end
