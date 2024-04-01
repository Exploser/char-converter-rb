# char-converter.rb

def to_ascii(string)
  string.each_char.map{ |char| char.ord }
end

# Get the string from the user
input_string = ARGV[0] || "Test"

puts "Original String: #{input_string}"

puts "ASCII Values: #{to_ascii(input_string).join(', ')}"

