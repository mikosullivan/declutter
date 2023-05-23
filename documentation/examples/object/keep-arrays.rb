#!/usr/bin/ruby -w
require_relative '/home/miko/projects/ruby-lib/content/lib/cl-dev.rb' ## {"skip":true}
require 'declutter'

## {"start":"declutter"}
myhash = { 'episodes'=>[], 'notes'=>{} }
puts myhash # => {"episodes"=>[], "notes"=>{}}

declutter = Declutter.new()
declutter.delete_empty_arrays = false
declutter.process myhash

puts myhash # => {"episodes"=>[]}
## {"end":"declutter"}