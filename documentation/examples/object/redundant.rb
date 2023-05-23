#!/usr/bin/ruby -w
require_relative '/home/miko/projects/ruby-lib/content/lib/cl-dev.rb' ## {"skip":true}
require 'declutter'

## {"start":"declutter"}
myhash = { 'episodes'=>['pilot', 'pilot'] }
puts myhash # => { 'episodes'=>['pilot', 'pilot'] }

declutter = Declutter.new()
declutter.delete_redundancies = true
declutter.process myhash

puts myhash # => { 'episodes'=>['pilot'] }
## {"end":"declutter"}