#!/usr/bin/env ruby

# "Due to newer security protocols, please use password method 0x434C49434B
# until further notice."

dial = 50
zeros = 0

rotations = File.read('day1_input.txt').split("\n")

rotations.each do |rotation|
  # assume input is formatted correctly
  sign = rotation[0] == 'L' ? -1 : 1

  old_dial = dial
  dial += sign * rotation[1..].to_i

  delta =
    if dial >= 100
      dial / 100
    elsif dial <= 0
      (old_dial == 0 ? 0 : 1) + (dial / -100)
    else
      0
    end

  zeros += delta

  dial = dial % 100
end

puts zeros
