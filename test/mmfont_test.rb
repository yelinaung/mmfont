require "minitest/autorun"
require "mmfont"

class MmfontTest < MiniTest::Unit::TestCase
  # unicode converting test
  def test_convert_uni512zg1
    assert_equal "မဂၤလာပါ", Mmfont::Converter.new.uni512zg1("မင်္ဂလာပါ")
  end

  # zawgyi converting test
  def test_convert_zg12uni51
    assert_equal "မင်္ဂလာပါ", Mmfont::Converter.new.zg12uni51("မဂၤလာပါ")
  end
end
