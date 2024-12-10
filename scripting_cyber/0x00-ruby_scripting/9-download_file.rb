#!/bin/usr/env ruby
require 'open-uri'

url = ARGV[0]
local_file_path = ARGV[1]

file = open(url)
content = file.read
file.close


local_file = File.open(local_file_path, 'wb')
local_file.write(content)
local_file.close
