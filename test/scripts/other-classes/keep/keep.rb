#!/usr/bin/ruby -w
require_relative './dir.rb'

# get test hash
actual = actual_hash

# json
# puts JSON.pretty_generate(actual)

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
Bryton::Lite::Tests.assert actual['hashes']['keep']['b'].is_a?(DeleteMe)
Bryton::Lite::Tests.assert actual['hashes']['delete']['a'].is_a?(DeleteMe)
Bryton::Lite::Tests.assert actual['hashes']['delete']['b'].is_a?(DeleteMe)

# arrs
Bryton::Lite::Tests.assert_equal actual['arrs'].length, expected['arrs'].length
Bryton::Lite::Tests.assert actual['arrs']['keep'].is_a?(Array)
Bryton::Lite::Tests.assert actual['arrs']['keep'][0].is_a?(KeepMe)
Bryton::Lite::Tests.assert actual['arrs']['keep'][1].is_a?(DeleteMe)
Bryton::Lite::Tests.assert actual['arrs']['delete'][0].is_a?(DeleteMe)
Bryton::Lite::Tests.assert actual['arrs']['delete'][1].is_a?(DeleteMe)

# done
Bryton::Lite::Tests.done