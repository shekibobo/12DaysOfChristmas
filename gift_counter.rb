#!/usr/bin/env ruby

class GiftCounter
  def count_gifts(gifts, day)
#    gifts.split($/).last(day).map{|l| (x = l.to_i) > 0 ? x : 1}.inject(:+) #1 : 7.734064

    gifts.split($/).last(day).inject(0) {|t,l| t += (l = l.to_i) == 0 ? 1 : l }
  end
end

