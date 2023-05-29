#===============================================================================
# Declutter
#
class Declutter
	# If empty hashes should be deleted. True by default.
	attr_accessor :delete_empty_hashes
	
	# If empty arrays should be deleted. True by default.
	attr_accessor :delete_empty_arrays
	
	# If redundant array elements should be deleted. False by default.
	attr_accessor :delete_redundancies
	
	# If nils should be deleted. False by default.
	attr_accessor :delete_nils
	
	# If falses should be deleted. False by default.
	attr_accessor :delete_falses
	
	# If objects that respond to #declutter should be processed Defaults
	# to true.
	attr_accessor :process_others
	
	#---------------------------------------------------------------------------
	# initialize
	#
	
	# Creates a new Declutter object. Takes no params.
	
	def initialize
		@delete_empty_hashes = true
		@delete_empty_arrays = true
		@delete_redundancies = false
		@delete_nils = false
		@delete_falses = false
		@process_others = true
	end
	#
	# initialize
	#---------------------------------------------------------------------------
	
	
	#---------------------------------------------------------------------------
	# process
	#
	
	# Declutter a hash or array.
	
	def process(obj)
		# declutter hash
		if obj.is_a?(Hash)
			process_hash obj
		
		# declutter array
		elsif obj.is_a?(Array)
			process_array obj
		end
	end
	#
	# process
	#---------------------------------------------------------------------------
	
	
	#---------------------------------------------------------------------------
	# self.process
	#
	
	# Shortcut for decluttering with default settings.
	
	def self.process(obj)
		self.new.process obj
	end
	#
	# self.process
	#---------------------------------------------------------------------------
	
	
	# private
	private
	
	
	#---------------------------------------------------------------------------
	# process_hash
	#
	def process_hash(hsh)
		hsh.keys.each do |k|
			v = hsh[k]
			process v
			
			# delete or process element
			if not keep_element?(v)
				hsh.delete k
			end
		end
	end
	#
	# process_hash
	#---------------------------------------------------------------------------
	
	
	#---------------------------------------------------------------------------
	# process_array
	#
	def process_array(arr)
		hold = arr.clone
		arr.clear
		
		# add back elements that are acceptable
		hold.each do |child|
			process child
			
			if keep_element?(child)
				arr.push child
			end
		end
		
		# uniq array if necessary
		if @delete_redundancies
			arr.uniq!
		end
	end
	#
	# process_array
	#---------------------------------------------------------------------------
	
	
	#---------------------------------------------------------------------------
	# keep_element
	#
	def keep_element?(v)
		# hash
		if v.is_a?(Hash)
			if @delete_empty_hashes and v.empty?
				return false
			end
			
		# array
		elsif v.is_a?(Array)
			if @delete_empty_arrays and v.empty?
				return false
			end
			
		# nil
		elsif v.nil?
			return !@delete_nils
			
		# false
		elsif not v
			return !@delete_falses
			
		# other class
		elsif @process_others and v.respond_to?('declutter')
			if not v.declutter
				return false
			end
		end
		
		# if we get this far then we're keeping the element
		return true
	end
	#
	# keep_element
	#---------------------------------------------------------------------------
end
#
# Declutter
#===============================================================================