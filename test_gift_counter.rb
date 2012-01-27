#!/usr/bin/env ruby

require_relative "gift_counter"
require "test/unit"
require "benchmark"

class GiftCounterTest < Test::Unit::TestCase
  def setup
    @gifts = File.open('gifts.txt', "rb").read
    @counter = GiftCounter.new
  end

  def test_count_gifts
    (1..12).to_a.each do |i|
      assert_equal (1..i).to_a.inject(:+), @counter.count_gifts(@gifts, i)
    end
  end

  def test_performance
    Benchmark.bm do |b|
      b.report("time: ") do
        1_000_000.times { @counter.count_gifts(@gifts, 10) }
      end
    end
  end
end
