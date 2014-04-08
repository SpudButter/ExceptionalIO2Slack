#!/usr/bin/env ruby

require 'httparty'

if ARGV.size != 2
  puts "USAGE: ./build.rb HOST DATA"
  exit
end

url = ARGV.first
path = File.expand_path(ARGV.last)
data = JSON.load(File.read(path))
p HTTParty.post(url, body: data)
