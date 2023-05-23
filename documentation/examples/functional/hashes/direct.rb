#!/usr/bin/ruby -w
require_relative '/home/miko/projects/ruby-lib/content/lib/cl-dev.rb' ## {"skip":true}
require 'declutter'

## {"start":"declutter"}
myhash = {'title' => 'Titus Andronicus', 'notes' => {} }
puts myhash # => {"title"=>"Titus Andronicus", "notes"=>{}}
Declutter.process myhash
puts myhash # => {"title"=>"Titus Andronicus"}
## {"end":"declutter"}