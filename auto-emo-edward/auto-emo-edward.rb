#!/usr/bin/env ruby -w

# Crappy auto-emo poetry generator

require 'rubygems'
require "hpricot"
require "open-uri"
require "logger"

puts "Looking up poems"

poem_file = File.open("poems.txt", "w+")

# Get emo kids' personal pages
source = Hpricot(open("http://allpoetry.com/group/info/Emo+Kids"))

emo_kids_names = []

(source/"#main").search("/a") do |link|
  emo_kids_names << link.attributes['href'][1..-1]
end

# Remove the group owner's -- possibly NOT EMO ENOUGH!
emo_kids_names.shift

poems = {}

file = File.open('poems_sucked.log', File::WRONLY | File::APPEND)
log = Logger.new(file)

emo_kids_names.each do |name|
  next if name.nil?
  
  log.info("Looking at #{name}’s poetry")
  # log name
  poem_file << "Author: #{name} \n"
  
  poem_urls = []
  poem_page = Hpricot(open("http://allpoetry.com/poem/by/" + name))
  (poem_page/"#main/.item_list/li").each do |poem|
    poem_url = poem['id'].gsub('item_', '')
    poem_source = Hpricot(open("http://allpoetry.com/poem/" + poem_url))
    title = (poem_source/"title").inner_html # PROBLEM HERE
    poem_file << "Title: #{title}"
    log.info("Reading #{title}")
    poem_file << (poem_source/"#content").inner_html
    poem_file << "End of Poem\n"
  end
  
  poem_file << "End of Author Entry\n"
end