$LOAD_PATH.unshift File.expand_path('../lib', File.dirname(__FILE__))
require 'bryton/lite.rb'
require 'json'
require 'local-json'
require 'declutter'

# standard_struct
def standard_struct
	path = File.dirname(__FILE__) + '/standard-struct.json'
	json = File.read(path)
	return JSON.parse(json)
end
