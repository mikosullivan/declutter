#!/usr/bin/ruby -w
require_relative './dir.rb'

# hash
hsh = standard_struct()

# cleaner
cleaner = Declutter.new()
cleaner.delete_redundancies = true

# process
cleaner.process hsh

# tests
Bryton::Lite::Tests.assert_equal local_json('should.json'), hsh

# done
Bryton::Lite::Tests.done