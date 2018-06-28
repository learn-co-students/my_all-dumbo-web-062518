require 'pry'

def my_all?(collection)
	i = 0
	keep_track = []
	while i < collection.length
		keep_track << yield(collection[i])
		i += 1
	end
	if keep_track.include?(false)
		return false
	else
		return true
	end
end