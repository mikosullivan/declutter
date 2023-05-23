#!/usr/bin/ruby -w
require_relative '/home/miko/projects/ruby-lib/content/lib/cl-dev.rb' ## {"skip":true}
require 'declutter'

## {"start":"declutter"}
myhash = { 'title' => 'Titus Andronicus', 'episodes' => ['scenes'=>[]] };
puts myhash # => {"title"=>"Titus Andronicus", "episodes"=>[{"scenes"=>[]}]}
Declutter.process myhash
puts myhash # => {"title"=>"Titus Andronicus"}
## {"end":"declutter"}