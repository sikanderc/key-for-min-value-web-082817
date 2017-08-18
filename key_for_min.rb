# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  name_hash.map do |name, value|
    lowest_name = name
    lowest_value = value
    name_hash.delete_if {|key, val| val > lowest_value }
  end.uniq
  name_hash.flatten[0]
end

=begin
Solution way:
def key_for_min_value(hash)
  lowest_key = nil
  lowest_value = nil
  hash.each do |k, v|
    if lowest_value == nil || v < lowest_value
      lowest_value = v
      lowest_key = k
    end
  end
  lowest_key
end
=end
