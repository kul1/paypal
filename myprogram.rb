#/usr/bin/env ruby
require 'pry'
require './lib/credit_card_valid.rb'
require './lib/main_process.rb'


if $stdin.tty?
  ARGV.each do |file|
		main_process(file)
  end
else
  $stdin.each_line do |line|
		main_process(line)
  end
end
