require_relative '/home/miko/projects/ruby-lib/content/lib/cl-dev.rb'
require 'bryton/lite'
Bryton.tester.die_on_fail = true
require_relative '../common.lib.rb'

# for development; remove for true testing
require 'idocs/testing'
$tm = Idocs::Tests
