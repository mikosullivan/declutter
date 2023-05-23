#!/usr/bin/ruby -w
require_relative '/home/miko/projects/ruby-lib/content/lib/cl-dev.rb' ## {"skip":true}
require 'declutter'

myhash = { 'title' => 'Titus Andronicus', 'episodes' => [] }
puts myhash # => {"title"=>"Titus Andronicus", "episodes"=>[]}
Declutter.process myhash
puts myhash # => {"title"=>"Titus Andronicus"}