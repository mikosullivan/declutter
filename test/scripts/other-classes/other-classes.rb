class OtherClass
	def to_json(*opts)
		return {'keepme'=>declutter}.to_json
	end
end

class KeepMe < OtherClass
	def declutter
		return true
	end
end

class DeleteMe < OtherClass
	def declutter
		return false
	end
end

def actual_hash
	# build hash
	actual = {}
	
	# hashes
	actual['hashes'] = {}
	actual['hashes']['keep'] = {'a'=>KeepMe.new, 'b'=>DeleteMe.new}
	actual['hashes']['delete'] = {'a'=>DeleteMe.new, 'b'=>DeleteMe.new}
	
	# arrays
	actual['arrs'] = {}
	actual['arrs']['keep'] = [KeepMe.new, DeleteMe.new]
	actual['arrs']['delete'] = [DeleteMe.new, DeleteMe.new]
	
	# return
	return actual
end