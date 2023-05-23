#!/usr/bin/ruby -w
require_relative '/home/miko/projects/ruby-lib/content/lib/cl-dev.rb' ## {"skip":true}
require 'declutter'

## {"start":"declutter"}
myhash = { 'episodes'=>['pilot', false] }
puts myhash # => {"episodes"=>["pilot", false]}

declutter = Declutter.new()
declutter.delete_falses = true
declutter.process myhash

puts myhash # => {"episodes"=>["pilot"]}
## {"end":"declutter"}