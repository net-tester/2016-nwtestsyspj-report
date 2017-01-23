#!/usr/bin/env ruby

require 'csv'

header, *lines = CSV.read('step2-req.csv')

puts '\hline'
puts header.join(' & ') + ' \\\\'
puts '\hline'
puts '\hline'
lines.each do |line|
  puts line.join(' & ') + ' \\\ \hline'
end
