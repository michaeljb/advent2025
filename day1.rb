#!/usr/bin/env ruby

dial = 50
zeros = 0

File.read('day1_input.txt').split("\n").each do |rotation|
  # assume input is formatted correctly
  sign = rotation[0] == 'L' ? -1 : 1
  value = sign * rotation[1..].to_i
  dial = (dial + value) % 100
  zeros += 1 if dial.zero?
end

puts zeros
