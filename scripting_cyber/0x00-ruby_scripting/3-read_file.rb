#!/usr/bin/env ruby
require 'json'

def count_user_ids(path)
  file_cont = File.read(path)
  info = JSON.parse(file_cont)
  u_id_count = 0
  data.each do |item|
    u_id_count += 1 if item['userId']
  end
  return u_id_count
end
