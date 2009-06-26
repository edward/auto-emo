require 'test_helper'

class AutoEmoPoemTest < Test::Unit::TestCase
  def test_generation
    assert !AutoEmo::Poem.generate.empty?
  end
end
