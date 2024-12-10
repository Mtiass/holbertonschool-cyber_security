#!/bin/usr/env ruby
require 'open-uri'
require 'uri'
require 'fileutils'

if ARGV.length != 2
  puts "Usage: 9-download_file.rb URL LOCAL_FILE_PATH"
  exit
end

url = ARGV[0]
local_file_path = ARGV[1]
file = URI.open(url)
content = file.read
file.close

dir = File.dirname(local_file_path)
  
local_file = File.open(local_file_path, 'wb')
local_file.write(content)
local_file.close
