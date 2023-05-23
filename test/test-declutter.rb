require 'minitest/autorun'
Dir.chdir File.dirname(__FILE__)
require 'bryton/lite.rb'

# test class
class BrytonLiteTest < Minitest::Test
	def test_scripts
		Dir.chdir('./scripts') do
			Bryton::Lite::Runner.run do |path, results|
				assert results['success']
			end
		end
		
		# should not be successful
		assert Bryton::Lite::Tests.success?
	end
end