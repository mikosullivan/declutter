#!/usr/bin/ruby -w
require_relative './dir.rb'

# get test hash
actual = actual_hash

# declutter
Declutter.process actual

# show structures
# puts '-------------------------------------------------'
# puts local_json('expected.json')
# puts '-------------------------------------------------'
# puts actual
# puts '-------------------------------------------------'

# get expected
expected = local_json('expected.json')

# compare top level hashes
Bryton::Lite::Tests.assert_equal expected.length, actual.length
Bryton::Lite::Tests.assert actual['hashes'].is_a?(Hash)
Bryton::Lite::Tests.assert actual['arrs'].is_a?(Hash)

# hashes
Bryton::Lite::Tests.assert_equal actual['hashes'].length, expected['hashes'].length
Bryton::Lite::Tests.assert actual['hashes']['keep'].is_a?(Hash)
Bryton::Lite::Tests.assert actual['hashes']['keep']['a'].is_a?(KeepMe)

# arrs
Bryton::Lite::Tests.assert_equal actual['arrs'].length, expected['arrs'].length
Bryton::Lite::Tests.assert actual['arrs']['keep'].is_a?(Array)
Bryton::Lite::Tests.assert actual['arrs']['keep'][0].is_a?(KeepMe)

# done
Bryton::Lite::Tests.done