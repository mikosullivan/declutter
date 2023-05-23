#!/usr/bin/ruby -w
require_relative './dir.rb'

# hash
hsh = standard_struct()

# cleaner
cleaner = Declutter.new()
cleaner.delete_redundancies = true

# process
cleaner.process hsh

# verbosify
# puts JSON.pretty_generate(local_json('expected.json'))
# TTM.hr
# puts JSON.pretty_generate(hsh)

# tests
Bryton::Lite::Tests.assert_equal local_json('expected.json'), hsh

# done
Bryton::Lite::Tests.done