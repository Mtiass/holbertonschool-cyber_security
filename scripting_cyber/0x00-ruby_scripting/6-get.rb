#!/usr/bin/env ruby
require 'json'
require 'net/http'
require 'uri'

def get_reequest(url)
  
  uri = URI.parse(url)

  request = Net::HTTP::Get.new(uri)

  response = Net::HTTP.start(uri.hostname, uri.port) do |http|
    http.request(request)
  end

  puts "Response status: #{response.code} #{response.message}"
  puts "Response body:"
  puts JSON.pretty_generate(JSON.parse(response.body))
end
