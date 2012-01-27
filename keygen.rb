#!/usr/bin/env ruby

class Keygen
  def count_gifts(gifts, day)
    gifts.lines.to_a[-day..-1].map {|l| (x = l.to_i) > 0 ? x : 1}.inject(:+)
  end
end


