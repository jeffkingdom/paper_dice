#!/usr/bin/env ruby

require "erb"

dice_def = ARGV[0].downcase
dice_def_parts = dice_def.split("d")
dice_per_roll = dice_def_parts[0].to_i
die_sides = dice_def_parts[1].to_i
run_number = ARGV[1]

def roll(count, sides)
  (1..count).map{rand(1..sides)}.sum
end

template = File.read("paper_dice.erb")
erb = ERB.new(template)

puts erb.result(binding)
