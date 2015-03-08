# encoding: utf-8

#--
# Copyright (c) 2014 Ye Lin Aung
# Zawgyi<>Unicode converter python module
# Based on rules from Parabaik Myanmar Text Converter
# Copyright (C) 2014 Ngwe Tun (Solveware Solution)
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#--

require 'minitest/autorun'
require 'mmfont'
require 'coveralls'
Coveralls.wear!

class MmfontTest < Minitest::Test
  # unicode converting test
  def test_convert_uni512zg1
    assert_equal 'မဂၤလာပါ', Mmfont::Converter.new.uni512zg1('မင်္ဂလာပါ')
  end

  # zawgyi converting test
  def test_convert_zg12uni51
    assert_equal 'မင်္ဂလာပါ', Mmfont::Converter.new.zg12uni51('မဂၤလာပါ')
    assert_equal 'ဘောလုံးကန်တာမှ ကောင်းဦးမယ်', Mmfont::Converter.new.zg12uni51('ေဘာလုံးကန္တာမွ ေကာင္းဦးမယ္')
    assert_equal 'မြန်မာလိုပြောမယ်လကွာ', Mmfont::Converter.new.zg12uni51('ျမန္မာလိုေျပာမယ္လကြာ')
  end
end
