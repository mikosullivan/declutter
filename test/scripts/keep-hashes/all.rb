#!/usr/bin/ruby -w
require_relative './dir.rb'
require 'local-json'

# hash
actual = standard_struct()

# cleaner
cleaner = Declutter.new()
cleaner.delete_empty_hashes = false

# process
cleaner.process actual

# verbosify
# puts JSON.pretty_generate(local_json('expected.json'))
# TTM.hr
# puts JSON.pretty_generate(actual)

# tests
Bryton::Lite::Tests.assert_equal local_json('expected.json'), actual

# done
Bryton::Lite::Tests.done