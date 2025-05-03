#!/usr/bin/env ruby

require "erb"

pdf = ARGV[0]

template = File.read("paper_dice_booklet.erb")
erb = ERB.new(template)

puts erb.result(binding)
