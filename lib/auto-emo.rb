#!/usr/bin/env ruby
#
#  Created by Edward Ocampo-Gooding on 2007-01-31.

require "rubygems"

# It would be really cool to have UTF8 working
# require 'jcode'
# $KCODE = 'UTF8'

# Returns a poem
def poetry_churn(poems)
  length = 4 + rand(7)
  lines = []

  length.times do
    lines << poems[rand(poems.size)]
  end
  
  lines.join("\n")
end

poems = []

File.open("poems") do |f|
  poems = Marshal.load(f)
end

puts "\nBooyeah! Let's make some poetry!"

File.open("emo-poetry.txt", "w+") do |f|
  500.times do
    f << poetry_churn(poems)
    f << "\n\n"
  end
end

`open emo-poetry.txt`