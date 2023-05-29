#!/usr/bin/ruby -w
require_relative '/home/miko/projects/ruby-lib/content/lib/cl-dev.rb' ## {"skip":true}
require 'declutter'

## {"start":"classes"}
class KeepMe
	def declutter
		return true
	end
end

class DeleteMe
	def declutter
		return false
	end
end
## {"end":"classes"}


## {"start":"delete"}
hsh = {}
hsh['keep-it'] = KeepMe.new
hsh['delete-it'] = DeleteMe.new

Declutter.process hsh

puts hsh # => {"keep-it"=>#<KeepMe:0x0000559f8574b718>}
## {"end":"delete"}

## {"start":"keep"}
hsh = {}
hsh['keep-it'] = KeepMe.new
hsh['delete-it'] = DeleteMe.new

declutter = Declutter.new
declutter.process_others = false
declutter.process hsh

puts hsh # => {"keep-it"=>#<KeepMe:0x000055e5ffd46f80>, "delete-it"=>#<DeleteMe:0x000055e5ffd46f30>}
## {"end":"keep"}