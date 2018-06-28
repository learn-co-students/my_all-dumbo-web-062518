require 'pry'

def my_all?(collection)
	i = 0
	keep_track = true
	while i < collection.length
		result = yield collection[i]
		keep_track = result == true ? true : false
		i += 1
		break if keep_track == false
	end
	return collection
end