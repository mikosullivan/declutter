#!/usr/bin/ruby -w
require_relative './dir.rb'
require_relative './other-classes.rb'

# keeper
keeper = KeepMe.new
puts keeper
puts keeper.declutter
puts keeper.to_json

# deleter
deleter = DeleteMe.new
puts deleter
puts deleter.declutter
puts deleter.to_json

# done
puts '[done]'