#!/usr/bin/env ruby
require 'json'

def count_user_ids(path)
  file_cont = File.read(path)
  info = JSON.parse(file_cont)
  id_count = Hash.new(0)

  info.each do |entry|
    u_id = entry['userId']
    id_count[u_id] += 1
  end

  id_count.each do |u_id, count|
    puts "#{u_id}: #{count}"
  end
end
