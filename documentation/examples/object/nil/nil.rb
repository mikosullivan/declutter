#!/usr/bin/ruby -w
require_relative '/home/miko/projects/ruby-lib/content/lib/cl-dev.rb' ## {"skip":true}
require 'declutter'

## {"start":"declutter"}
myhash = { 'episodes'=>['pilot', nil, 'transition'] }
puts myhash # => {"episodes"=>["pilot", nil, "transition"]}

declutter = Declutter.new()
declutter.delete_nils = true
declutter.process myhash

puts myhash # => {"episodes"=>["pilot", "transition"]}
## {"end":"declutter"}