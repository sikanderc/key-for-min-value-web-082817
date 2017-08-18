# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  name_hash.map do |name, value|
    lowest_name = name
    lowest_value = value
    name_hash.delete_if {|key, val| val > lowest_value }
    lowest_name
  end.uniq
  #name_hash.flatten[0]
end
