require 'minitest/autorun'
require_relative 'sequence'

class TestSequence < Minitest::Test
  def test_call
    s = Sequence.new
    results = [ '1', '11', '21', '1211', '111221', '312211' ]
    results.each_with_index do |result, number|
      assert(s.call(number) == result)
      s.reset
    end
  end
end
