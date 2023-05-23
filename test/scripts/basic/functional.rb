#!/usr/bin/ruby -w
require_relative './dir.rb'

# hash
actual = standard_struct()

# cleaner
Declutter.process actual

# compare
Bryton::Lite::Tests.assert_equal local_json('expected.json'), actual

# done
Bryton::Lite::Tests.done