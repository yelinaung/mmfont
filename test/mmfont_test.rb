require "minitest/autorun"

require "mmfont"

class Mmfont < Minitest::Test
  def test_convert
    assert_equal "http://howistart.org/posts/ruby/1", Mmfont::Convert
  end
end
