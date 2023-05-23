require_relative '/home/miko/projects/ruby-lib/content/lib/cl-dev.rb'
require 'bryton/lite'
require 'declutter'
require 'local-json'
require 'tatum'

# standard_struct
def standard_struct
	path = File.dirname(__FILE__) + '/standard-struct.json'
	json = File.read(path)
	return JSON.parse(json)
end