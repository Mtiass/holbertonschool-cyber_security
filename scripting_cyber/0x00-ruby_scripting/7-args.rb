#!/usr/bin/env ruby
def print_arguments
  if ARGV.empty?
    puts "No arguments provided."
  else
    ARGV.each do |arg, index|
      puts "#{index + 1}. #{arg}"
    end
  end
end
