#!/bin/usr/env ruby
require 'json'

def merge_json_files(file1_path, file2_path)
  file1_content = File.read(file1_path)
  data1 = JSON.parse(file1_content)
  
  file2_content = File.read(file2_path)
  data2 = JSON.parse(file2_content)

  merged_data = data2 + data1
  
  File.write(file2_path, JSON.pretty_generate(merged_data))

  puts "Merged JSON written to #{file2_path}"
end