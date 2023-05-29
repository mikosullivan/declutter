#!/usr/bin/ruby -w
require_relative './dir.rb'

# hash
actual = standard_struct()

# cleaner
cleaner = Declutter.new()
cleaner.delete_nils = true

# process
cleaner.process actual

# # verbosify
# puts JSON.pretty_generate(local_json('expected.json'))
# TTM.hr
# puts JSON.pretty_generate(actual)

# compare
Bryton::Lite::Tests.assert_equal local_json('expected.json'), actual

# done
Bryton::Lite::Tests.done