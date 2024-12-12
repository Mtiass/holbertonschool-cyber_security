#!/usr/bin/env ruby
require 'json'
require 'net/http'
require 'uri'

def post_request(url, body_params)
  
  uri = URI.parse(url)

  request = Net::HTTP::Post.new(uri)

  request.body = body_params.to_json if body_params

  response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') do |http|
    http.request(request)
  end

  puts "Response status: #{response.code} #{response.message}"
  puts "Response body:"
  puts JSON.pretty_generate(JSON.parse(response.body))
end
